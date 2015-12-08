# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authanvil/version'

Gem::Specification.new do |spec|
  spec.name          = "authanvil"
  spec.version       = Authanvil::VERSION
  spec.authors       = ["Alex Myers"]
  spec.email         = ["alex.myers@enspiresoftware.com"]

  spec.summary       = %q{Ruby Wrapper for AuthAnvil 2FA}
  spec.homepage      = "https://github.com/enspiresoftware/authanvil-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-emoji"

  spec.add_dependency 'savon'
end
