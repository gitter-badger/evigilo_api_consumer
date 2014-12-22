require 'spec_helper'
require 'evigilo_api_consumer'

describe EvigiloApiConsumer do
  it 'configures the base_url of the API' do
    EvigiloApiConsumer.configure do |config|
      config.base_uri = "some_url"
      config.username = "username"
      config.password = "password"
    end
    expect(EvigiloApiConsumer.configuration.base_uri).to eq("some_url")
    expect(EvigiloApiConsumer.configuration.username).to eq("username")
    expect(EvigiloApiConsumer.configuration.password).to eq("password")
  end
end
