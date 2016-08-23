LITA RingCentral Adapter
========================

[![Gem Version][gem-version-svg]][gem-version-link]
[![Build Status][build-status-svg]][build-status-link]
[![Coverage Status][coverage-status-svg]][coverage-status-link]
[![Dependency Status][dependency-status-svg]][dependency-status-link]
[![Code Climate][codeclimate-status-svg]][codeclimate-status-link]
[![Scrutinizer Code Quality][scrutinizer-status-svg]][scrutinizer-status-link]
[![Downloads][downloads-svg]][downloads-link]
[![Docs][docs-rubydoc-svg]][docs-rubydoc-link]
[![License][license-svg]][license-link]

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

LITA RingCentral Adapter is available under the MIT license. See [LICENSE.txt](LICENSE.txt) for details.

LITA RingCentral Adapter &copy; 2016 by John Wang

 [gem-version-svg]: https://badge.fury.io/rb/lita-ringcentral.svg
 [gem-version-link]: http://badge.fury.io/rb/lita-ringcentral
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/lita-ringcentral
 [downloads-link]: https://rubygems.org/gems/lita-ringcentral
 [build-status-svg]: https://api.travis-ci.org/grokify/lita-ringcentral.svg?branch=master
 [build-status-link]: https://travis-ci.org/grokify/lita-ringcentral
 [coverage-status-svg]: https://coveralls.io/repos/grokify/lita-ringcentral/badge.svg?branch=master
 [coverage-status-link]: https://coveralls.io/r/grokify/lita-ringcentral?branch=master
 [dependency-status-svg]: https://gemnasium.com/grokify/lita-ringcentral.svg
 [dependency-status-link]: https://gemnasium.com/grokify/lita-ringcentral
 [codeclimate-status-svg]: https://codeclimate.com/github/grokify/lita-ringcentral/badges/gpa.svg
 [codeclimate-status-link]: https://codeclimate.com/github/grokify/lita-ringcentral
 [scrutinizer-status-svg]: https://scrutinizer-ci.com/g/grokify/lita-ringcentral/badges/quality-score.png?b=master
 [scrutinizer-status-link]: https://scrutinizer-ci.com/g/grokify/lita-ringcentral/?branch=master
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-link]: http://www.rubydoc.info/gems/lita-ringcentral/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-link]: https://github.com/grokify/lita-ringcentral/blob/master/LICENSE.txt
