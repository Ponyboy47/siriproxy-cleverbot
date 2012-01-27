# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-cleverbot"
  s.version     = "0.0.1" 
  s.authors     = ["Ponyboy47"]
  s.email       = ["ponyboy47@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Cleverbot Client}
  s.description = %q{Talk to Cleverbot through Siri rather than having to type out everything}

  s.rubyforge_project = "siriproxy-cleverbot"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
    s.add_runtime_dependency "cleverbot"
end
