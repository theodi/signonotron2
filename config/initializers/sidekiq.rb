# This file is overwritten on deploy

redis_config = {
  :namespace => 'signon'
}

if ENV['REDIS_URL']
  redis_config[:url]     = ENV['REDIS_URL']
end

Sidekiq.configure_client do |config|
  config.redis = redis_config
end
Sidekiq.configure_server do |config|
  config.redis = redis_config
end
