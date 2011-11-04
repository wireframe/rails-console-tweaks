# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails-console-tweaks/version"

Gem::Specification.new do |s|
  s.name        = "rails-console-tweaks"
  s.version     = Rails::Console::Tweaks::VERSION
  s.authors     = ["Ryan Sonnek"]
  s.email       = ["ryan@socialcast.com"]
  s.homepage    = "http://github.com/wireframe/rails-console-tweaks"
  s.summary     = %q{customize rails console with more useful defaults}
  s.description = %q{tweak the default console behavior with better defaults}

  s.rubyforge_project = "rails-console-tweaks"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', ['>= 3.0']
  s.add_runtime_dependency 'hirb', ['>= 0.5.0']
  s.add_development_dependency 'rake', ['0.9.2.2']
end
