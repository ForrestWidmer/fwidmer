  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'app20715424@heroku.com',
    :password       => 'e7fpvmbx',
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }