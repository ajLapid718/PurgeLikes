require 'highline/import'

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
