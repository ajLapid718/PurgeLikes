require 'highline/import'
require 'watir'

def get_email
  print "Enter your e-mail address: "
  return gets.chomp
end

def get_password
  begin
    facebook_password = ask("Enter your password: ") { |q| q.echo = "*" }
    password_confirmation = ask("Confirm your password: ") { |q| q.echo = "*" }
    if facebook_password == password_confirmation
      return facebook_password
    else
      raise Exception.new("Your passwords do not match. Try again.")
    end
  rescue Exception => error_message
    puts error_message
    retry
  end
end

def start_browser_session
  @browser = Watir::Browser.start("https://www.facebook.com/", :chrome, switches: %w[--log-level=3 --headless])
  Watir.default_timeout = 10
  puts "Opening Facebook's website..."
end

def enter_email
  puts " "
  puts "Typing in your e-mail address..."
  begin
    @browser.text_field(:name => "email").set(EMAIL)
  rescue
    "Moving on..."
  end
end

def submit_password
  puts " "
  puts "Typing in your password..."
  begin
    @browser.tap { |b| b.text_field(:name => "pass").set(PASSWORD) }.send_keys(:enter)
  rescue
    "Moving on..."
  end
end

def navigate_to_all_likes
  puts " "
  puts "Successfully logged in. Navigating to All Likes now..."
  username = @browser.a(:class => /^_2s25 _606w$/).href[25..-1]
  begin
    @browser.goto("https://www.facebook.com/#{username}/likes")
  rescue
    "Moving on..."
  end
  puts "Successfully on your All Likes page."
end

def unlike_pages
  puts "Currently unliking all Pages..."
  loop do
    @browser.button(:text => "Liked").click
    @browser.link(:text => "Unlike").click
    break if @browser.button(:text => "Liked").exists? == false
    puts "One success...many more to go..."
  end
end

def grab_all_titles
  puts "Currently jotting down all the titles of the Pages..."
  new_document = File.open("AllLikedPages.txt", "w")
  counter = 1
  @browser.divs(:class => /^fsl fwb fcb$/).each do |el|
    new_document.puts "#{counter}: #{el.text}"
    counter += 1
  end
  new_document.close
end

def shutdown
  sleep(1)
  puts "Everything is all taken care of!"
  sleep(1)
  puts "Goodbye!"
  sleep(1)
  @browser.close
end

def unlike_everything
  start_time = Time.now

  start_browser_session
  enter_email
  submit_password
  navigate_to_all_likes
  unlike_pages
  grab_all_titles

  puts "This script took #{(Time.now - start_time).to_i} seconds to complete!"
  shutdown
end

if __FILE__ == $PROGRAM_NAME
  EMAIL = get_email
  PASSWORD = get_password
  unlike_everything
end
