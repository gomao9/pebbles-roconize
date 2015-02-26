# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pebbles/roconize/version'

Gem::Specification.new do |spec|
  spec.name          = "pebbles-roconize"
  spec.version       = Pebbles::Roconize::VERSION
  spec.authors       = ["gomao9"]
  spec.email         = ["gomaoq@gmail.com"]
  spec.summary       = %q{Roconize all objects in the world.}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "https://github.com/gomao9/pebbles-roconize"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
