# lita-ringcentral

`lita-ringcentral` is an adapter for [Lita](https://www.lita.io/) that allows you to use the robot with [RingCentral](https://developers.ringcentral.com/) via SMS.

## Installation

Add `lita-ringcentral` to your Lita instance's Gemfile:

``` ruby
gem "lita-ringcentral"
```

### Example

``` ruby
Lita.configure do |config|
  config.robot.adapter = :ringcentral

  config.adapters.ringcentral.app_key = 'my_app_key'
  config.adapters.ringcentral.app_secret = 'my_app_secret'
  config.adapters.ringcentral.server = 'my_server'
  config.adapters.ringcentral.username = 'my_username'
  config.adapters.ringcentral.extension = 'my_extension'
  config.adapters.ringcentral.password = 'my_password'
end
```

### Change Log

See [CHANGELOG.md](CHANGELOG.md)

## Links

Project Repo

* https://github.com/grokify/lita-ringcentral

Lita

* https://www.lita.io/

## Contributing

1. Fork it ( http://github.com/grokify/lita-ringcentral/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

RingCentral SDK is available under the MIT license. See [LICENSE.txt](LICENSE.txt) for details.

RingCentral SDK &copy; 2016 by John Wang
