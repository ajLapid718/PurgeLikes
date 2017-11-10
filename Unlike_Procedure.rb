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
  puts "Successfully logged in. Navigating to All Likes now..."
end

def navigate_to_all_likes
  username = @browser.a(:class => /^_2s25 _606w$/).href[25..-1]
  begin
      @browser.goto("https://www.facebook.com/#{username}/likes")
  rescue
    "Moving on..."
  end
  puts "Successfully on your All Likes page."
end
