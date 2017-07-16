# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "fundamental"
  spec.version       = "0.1.0"
  spec.authors       = ["Theo M Jones"]
  spec.email         = ["theomjones@gmail.com"]

  spec.summary       = "A totally minimal Jekyll theme. Just the fundamentals."
  spec.homepage      = "https://theomjones.com/fundamental"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.5"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
