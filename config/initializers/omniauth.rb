OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #require 'openid/store/filesystem'
  #provider :developer unless Rails.env.production? 
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  #provider :openid, :store => OpenID::Store::Filesystem.new('/tmp')
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end
