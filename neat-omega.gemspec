Gem::Specification.new do |s|
  s.add_runtime_dependency "sass", "~> 3.4"
  s.authors = [
    "Kevin Garcia"
  ]
  s.email         = "kevin@kgcreative.com"
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files         = `git ls-files`.split("\n")
  s.homepage      = "https://github.com/kgcreative/neat-omega"
  s.license       = "MIT"
  s.name          = "neat-omega"
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.summary       = "An omega mixin family for Neat 2.x"
  s.version       = "3.0.0"
end
