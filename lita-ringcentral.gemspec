Gem::Specification.new do |spec|
  spec.name          = 'lita-ringcentral'
  spec.date          = '2016-12-28'
  spec.version       = '0.1.0'
  spec.authors       = ['John Wang']
  spec.email         = ["johncwang@gmail.com"]
  spec.description   = %q{A RingCentral SMS adapter for Lita.}
  spec.summary       = %q{A RingCentral SMS adapter for the Lita chat robot.}
  spec.homepage      = 'https://github.com/ringcentral-ruby'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'adapter' }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename f }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4.4', '>= 4.4.3'
  spec.add_runtime_dependency 'ringcentral_sdk', '~> 2.0', '>= 2.0.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug', '~> 3', '>= 3.4.2'
  spec.add_development_dependency 'rack-test', '~> 0', '>= 0.6.3'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'rspec',  '~> 3.0', '>= 3.0.0'
  spec.add_development_dependency 'simplecov', '~> 0', '>= 0.9.2'
  spec.add_development_dependency 'coveralls', '~> 0'
end
