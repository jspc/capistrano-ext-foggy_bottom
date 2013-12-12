$:.push File.expand_path("../lib", __FILE__)

require 'capistrano/ext/foggy_bottom/version'

Gem::Specification.new do |spec|
  spec.name = 'capistrano-ext-foggy_bottom'
  spec.version = Capistrano::Ext::Foggy_Bottom::Version::STRING
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Funding Circle']
  spec.email = ['james.condron@fundingcircle.co.uk']
  spec.summary = 'Spin up some stuffs'
  spec.description = 'SPIN SPIN SPIN'
  spec.license = 'Simplified BSD'

  spec.add_dependency 'capistrano', '>=2.11.0'
  spec.add_dependency 'capistrano-ext'
  spec.add_dependency 'fog'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'capistrano-spec'

  spec.require_path = 'lib'
end
