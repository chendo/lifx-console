# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lifx/console/version'

Gem::Specification.new do |spec|
  spec.name          = "lifx-console"
  spec.version       = LIFX::Console::VERSION
  spec.authors       = ["Jack Chen (chendo)"]
  spec.email         = ["gems+lifx-console@github.com"]
  spec.summary       = %q{Pry-enabled REPL for interacting with LIFX devices.}
  spec.description   = %q{Pry-enabled REPL for interacting with LIFX devices. Contains a bunch of useful utilities, like visual device identification.}
  spec.homepage      = "https://github.com/chendo/lifx-console"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "lifx", "~> 0.4"
  spec.add_dependency "pry"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
