require 'httparty'

module EvigiloApiConsumer
  class Consumer
    include HTTParty
    base_uri ::EvigiloApiConsumer.configuration.base_uri

    def self.default_options
      {
        basic_auth: {
          username: EvigiloApiConsumer.configuration.username,
          password: EvigiloApiConsumer.configuration.password
        },
        headers: { 'Content-Type' => 'application/json' }
      }
    end

    def self.get_options(change_hash)
      {
        body: { data: change_hash }.to_json
      }
    end

    def self.store(object_name, object_id, action, change_hash)
      url = "store/#{object_name}/#{object_id}/#{action}"
      query(url, :post, get_options(change_hash))
    end

    def self.get_version(version)
      query("versions/#{version}")
    end

    def self.query(url, method = :get, options = {})
      url = "#{EvigiloApiConsumer.configuration.base_uri}/#{url}"
      response = self.send(method, url, options.merge(self.default_options))
      JSON.parse(response.body)
    end
  end
end
