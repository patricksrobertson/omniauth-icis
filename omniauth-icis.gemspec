# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-icis/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Patrick Robertson"]
  gem.email         = ["patricksrobertson@gmail.com"]
  gem.description   = %q{Example OmniAuth strategy for ICIS}
  gem.summary       = %q{Example OmniAuth strategy for ICIS}
  gem.homepage      = "https://github.com/patricksrobertson/omniauth-icis"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-icis"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Icis::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
