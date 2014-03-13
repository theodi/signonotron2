# This file is overwritten on deploy

redis_config = {
  :namespace => 'signon'
}

if ENV['QUIRKAFLEEG_SIGNON_REDIS_HOST']
  redis_config[:host]     = ENV['QUIRKAFLEEG_SIGNON_REDIS_HOST']
  redis_config[:password] = ENV['QUIRKAFLEEG_SIGNON_REDIS_PASSWORD']
end

Sidekiq.configure_client do |config|
  config.redis = redis_config
end
Sidekiq.configure_server do |config|
  config.redis = redis_config
end
