
config.action_mailer.default_url_options = { :host => 'localhost:3000' }
ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "myinfo@gmail.com",  
  :password             => "secret",  
  :authentication       => "plain"
  # :enable_starttls_auto => true # I don't have this, but it should work anyway 
} 