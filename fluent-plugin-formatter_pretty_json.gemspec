# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-formatter_pretty_json"
  spec.version       = "0.0.1"
  spec.authors       = ["Yoshihiro MIYAI"]
  spec.email         = ["msparrow17@gmail.com"]

  spec.summary       = %q{Fluentd formatter plugin pretty json.}
  spec.description   = %q{Fluentd formatter plugin for formatting record to pretty json.}
  spec.homepage      = "https://github.com/mia-0032/fluent-plugin-formatter_pretty_json"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"

  spec.add_runtime_dependency "fluentd", ">= 0.12.0"
end
