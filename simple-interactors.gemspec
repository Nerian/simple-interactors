$:.push File.expand_path("lib", __dir__)

require "simple-interactors/version"

Gem::Specification.new do |spec|
  spec.name          = "simple-interactors"
  spec.version       = SimpleInteractors::VERSION
  spec.authors       = ["Gonzalo Rodríguez-Baltanás Díaz"]
  spec.email         = ["siotopo@gmail.com"]
  spec.description   = "Interactors for Ruby on Rails applications"
  spec.summary       = "Interactors for Ruby on Rails applications"
  spec.homepage      = "https://github.com/Nerian/simple-interactors"
  spec.license       = "MIT"

  spec.files         = `git ls-files -- lib/* CHANGELOG.md LICENSE.md README.md simple-interactors.gemspec`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.0"

  spec.add_dependency "hanami-utils", '2.0.0.beta1'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
