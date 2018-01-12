$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "eggshell/wiki/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "eggshell-wiki"
  s.version     = Eggshell::Wiki::VERSION
  s.authors     = ["Griffin Qiu", "Jason Lee"]
  s.email       = ["griffinqiu@gmail.com", "huacnlee@gmail.com"]
  s.homepage    = "https://github.com/sqsy/eggshell-wiki"
  s.summary     = Eggshell::Wiki::DESCRIPTION
  s.description = Eggshell::Wiki::DESCRIPTION
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5"
end

