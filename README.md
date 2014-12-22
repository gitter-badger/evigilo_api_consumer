# Evigilo Api Consumer

![Evigilo Logo](http://aviioblog.s3.amazonaws.com/screenshot-kensodevVC75M0a.jpg-2014-12-22-np7n4.png)


This is an API consumer gem for [Evigilo](https://github.com/gogobot/evigilo)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'evigilo_api_consumer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install evigilo_api_consumer

## Configuration

Once you install the gem in your application, you need to configure where your evigilo web api is hosted.

For this example, I will use the sample app hosted on heroku

```ruby
EvigiloApiConsumer.configure do |config|
  config.base_uri = "https://stark-dusk-7088.herokuapp.com"
  config.username = "some_username" # For HTTP basic auth
  config.password = "some_password" # For basic auth
end
```

## Usage

* `Consumer.version(‘version-id’)`
* `Consumer.store(‘users’, 1, ‘create’, { name: [‘Avi’, ‘NewAvi’] })`

*More endpoints support coming soon*


## Contributing

1. Fork it ( https://github.com/[my-github-username]/evigilo_api_consumer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

As always, the license it MIT