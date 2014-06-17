Recaptcha.configure do |config|
  config.public_key  = ENV['PUBLIC_CAPTCHA_KEY'].to_s.gsub(/\s+/, "")
  config.private_key = ENV['PRIVATE_CAPTCHA_KEY'].to_s.gsub(/\s+/, "")
end