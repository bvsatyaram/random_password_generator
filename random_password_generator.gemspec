# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "random_password_generator/version"

Gem::Specification.new do |s|
  s.name        = "random_password_generator"
  s.version     = RandomPasswordGenerator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Satyaram B V"]
  s.email       = ["bvsatyaram AT gmail DOT com"]
  s.homepage    = ""
  s.summary     = %q{Random password generator}
  s.description = %q{Generates a random password with variuos useful options}

  s.rubyforge_project = "random_password_generator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
