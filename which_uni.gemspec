# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'which_uni/version'

Gem::Specification.new do |spec|
  spec.name          = 'which-uni'
  spec.version       = WhichUni::VERSION
  spec.authors       = ['Lawrance Shepstone']
  spec.email         = ['lawrance.shepstone@gmail.com']

  spec.summary       = 'which-uni'
  spec.description   = 'Perform a "I\'m feeling lucky" Google search for the phrase "which university" from the command line!'
  spec.homepage      = 'https://github.com/lshepstone/which-uni'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'mechanize', '~> 2.7'

  spec.add_development_dependency 'aruba', '~> 0.6'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'vcr', '~> 2.9'
  spec.add_development_dependency 'webmock', '~> 1.2'
end
