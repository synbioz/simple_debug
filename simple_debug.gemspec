$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_debug/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_debug"
  s.version     = SimpleDebug::VERSION
  s.authors     = ["Martin Catty"]
  s.email       = ["mcatty@synbioz.com"]
  s.homepage    = "http://www.synbioz.com"
  s.summary     = "SimpleDebug helps debugging AR methods."
  s.description = "Print a debug with the caller's name for every instance method."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
