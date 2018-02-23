Gem::Specification.new do |spec|
  spec.name        = 'interactor-extended'
  spec.version     = '3.1.0' # Keep the same as the corresponding version of collectiveidea/interactor.
  spec.author      = 'Jeremy Phelps'
  spec.email       = 'jeremy.phelps@instacart.com'
  spec.description = 'Adds a few features that apparently used to be part of Interactor'
  spec.summary     = 'Extensions to collectiveidea/interactor'
  spec.homepage    = 'https://github.com/j3pic/interactor-extended'
  spec.license     = 'MIT'
  spec.files       = `git ls-files`.split($/)
  spec.test_files  = spec.files.grep(/^spec/)
  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_dependency 'interactor', '3.1.0'
end
