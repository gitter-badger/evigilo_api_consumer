require 'httparty'

module EvigiloApiConsumer
  class Consumer
    include HTTParty
    base_uri ::EvigiloApiConsumer.configuration.base_uri

    def self.get_options(change_hash)
      {
        query: {
          data: change_hash
        }
      }
    end

    def self.store(object_name, object_id, action, change_hash)
      url = "store/#{object_name}/#{object_id}/#{action}"
      query(url, :post, get_options(change_hash))
    end

    def self.get_version(version)
      url = "versions/#{version}"
      query(url)
    end

    def self.query(url, method = :get, options = {})
      url = "#{EvigiloApiConsumer.configuration.base_uri}/#{url}"
      response = self.send(method, url, options)
      JSON.parse(response.body)
    end
  end
end
