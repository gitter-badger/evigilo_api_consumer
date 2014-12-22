require "evigilo_api_consumer/version"
require "evigilo_api_consumer/configuration"

module EvigiloApiConsumer
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
