require 'spec_helper'
require 'evigilo_api_consumer'

describe EvigiloApiConsumer do
  it 'configures the base_url of the API' do
    EvigiloApiConsumer.configure do |config|
      config.base_url = "some_url"
    end
    expect(EvigiloApiConsumer.configuration.base_url).to eq("some_url")
  end
end
