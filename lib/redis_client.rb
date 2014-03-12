require 'redis'

class RedisClient
  include Singleton

  attr_reader :connection

  def initialize
    @connection = Redis.new(config.symbolize_keys)
  end

private

  def config
    if ENV['QUIRKAFLEEG_SIGNON_REDIS_HOST']
      {
        host:     ENV['QUIRKAFLEEG_SIGNON_REDIS_HOST'],
        password: ENV['QUIRKAFLEEG_SIGNON_REDIS_PASSWORD'],
      }
    else
      YAML.load_file(Rails.root.join("config", "redis.yml"))
    end
  end

end
