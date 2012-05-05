# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rand62/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kenn Ejima"]
  gem.email         = ["kenn.ejima@gmail.com"]
  gem.description   = %q{Generates random alphanumeric characters}
  gem.summary       = %q{Generates random alphanumeric characters}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rand62"
  gem.require_paths = ["lib"]
  gem.version       = Rand62::VERSION
end
