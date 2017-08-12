Lita RingCentral Adapter
========================

[![Gem Version][gem-version-svg]][gem-version-link]
[![Build Status][build-status-svg]][build-status-link]
[![Coverage Status][coverage-status-svg]][coverage-status-link]
[![Dependency Status][dependency-status-svg]][dependency-status-link]
[![Codacy Badge][codacy-svg]][codacy-link]
[![Code Climate][codeclimate-status-svg]][codeclimate-status-link]
[![Scrutinizer Code Quality][scrutinizer-status-svg]][scrutinizer-status-link]
[![Downloads][downloads-svg]][downloads-link]
[![Docs][docs-rubydoc-svg]][docs-rubydoc-link]
[![License][license-svg]][license-link]

[![Stack Overflow][stackoverflow-svg]][stackoverflow-url]
[![Chat][chat-svg]][chat-url]

`lita-ringcentral` is an adapter for [Lita](https://www.lita.io/) that allows you to use the robot with [RingCentral](https://developers.ringcentral.com/) via SMS.

## Installation

Add `lita-ringcentral` to your Lita instance's Gemfile:

``` ruby
gem "lita-ringcentral"
```

## Configuration

``` ruby
Lita.configure do |config|
  config.robot.adapter = :ringcentral

  # RingCentral app info
  config.adapters.ringcentral.app_key = 'my_app_key'
  config.adapters.ringcentral.app_secret = 'my_app_secret'
  config.adapters.ringcentral.server = 'my_server'

  # RingCentral user info
  config.adapters.ringcentral.username = 'my_username'
  config.adapters.ringcentral.extension = 'my_extension'
  config.adapters.ringcentral.password = 'my_password'

  # RingCentral bot SMS number available to authorized user
  config.adapters.ringcentral.sms_number = 'my_sms_number' 
end
```

### Notes

This adapter supports 1:1 communications between a Lita chatbot and a user of SMS. It supports standard communications and does not have special functionality for command routes.

## Usage

The bot will listen to and respond from the SMS number provided for `config.adapters.ringcentral.sms_number`.

## API documentation

The API documentation, useful for plugin authors, can be found for the latest gem release on [RubyDoc.info](http://www.rubydoc.info/gems/lita-ringcentral).

## To Do

1. User address book lookup.

## Change Log

See [CHANGELOG.md](CHANGELOG.md)

## Links

Project Repo

* https://github.com/ringcentral-ruby/lita-ringcentral

Lita

* https://www.lita.io/

## Contributing

1. Fork it ( http://github.com/ringcentral-ruby/lita-ringcentral/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Lita RingCentral Adapter is available under the MIT license. See [LICENSE.md](LICENSE.md) for details.

Lita RingCentral Adapter &copy; 2016 by John Wang

 [gem-version-svg]: https://badge.fury.io/rb/lita-ringcentral.svg
 [gem-version-link]: http://badge.fury.io/rb/lita-ringcentral
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/lita-ringcentral
 [downloads-link]: https://rubygems.org/gems/lita-ringcentral
 [build-status-svg]: https://api.travis-ci.org/ringcentral-ruby/lita-ringcentral.svg?branch=master
 [build-status-link]: https://travis-ci.org/ringcentral-ruby/lita-ringcentral
 [coverage-status-svg]: https://coveralls.io/repos/ringcentral-ruby/lita-ringcentral/badge.svg?branch=master
 [coverage-status-link]: https://coveralls.io/r/ringcentral-ruby/lita-ringcentral?branch=master
 [dependency-status-svg]: https://gemnasium.com/ringcentral-ruby/lita-ringcentral.svg
 [dependency-status-link]: https://gemnasium.com/ringcentral-ruby/lita-ringcentral
 [codacy-svg]: https://api.codacy.com/project/badge/Grade/7e769fa345eb4713ade44ef0e7e882fb
 [codacy-link]: https://www.codacy.com/app/ringcentral-ruby/lita-ringcentral
 [codeclimate-status-svg]: https://codeclimate.com/github/ringcentral-ruby/lita-ringcentral/badges/gpa.svg
 [codeclimate-status-link]: https://codeclimate.com/github/ringcentral-ruby/lita-ringcentral
 [scrutinizer-status-svg]: https://scrutinizer-ci.com/g/ringcentral-ruby/lita-ringcentral/badges/quality-score.png?b=master
 [scrutinizer-status-link]: https://scrutinizer-ci.com/g/ringcentral-ruby/lita-ringcentral/?branch=master
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-link]: http://www.rubydoc.info/gems/lita-ringcentral/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-link]: https://github.com/ringcentral-ruby/lita-ringcentral/blob/master/LICENSE.md
 [chat-svg]: https://img.shields.io/badge/chat-on%20glip-orange.svg
 [chat-url]: https://glipped.herokuapp.com/
 [stackoverflow-svg]: https://img.shields.io/badge/Stack%20Overflow-ringcentral-orange.svg
 [stackoverflow-url]: https://stackoverflow.com/questions/tagged/ringcentral
