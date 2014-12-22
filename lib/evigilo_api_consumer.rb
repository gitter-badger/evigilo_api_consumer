require "evigilo_api_consumer/version"
require "evigilo_api_consumer/configuration"

module EvigiloApiConsumer
  def self.configuration
    @configuration ||= EvigiloApiConsumer::Configuration.new
  end

  def self.configure
    yield(self.configuration)
  end
end

require 'evigilo_api_consumer/consumer'
