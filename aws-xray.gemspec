# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws/xray/version'

Gem::Specification.new do |spec|
  spec.name          = 'aws-xray'
  spec.version       = Aws::Xray::VERSION
  spec.authors       = ['Taiki Ono']
  spec.email         = ['taiks.4559@gmail.com']

  spec.summary       = %q{The unofficial X-Ray Tracing SDK for Ruby.}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/taiki45/aws-xray'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry-byebug'
end
