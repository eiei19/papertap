$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ta"
  s.version     = Ta::VERSION
  s.authors     = ["Akihiro Nagashima"]
  s.email       = ["ei.ei.oh.0613@gmail.com"]
  s.summary     = "papertap for user"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
