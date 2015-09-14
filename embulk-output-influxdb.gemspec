
Gem::Specification.new do |spec|
  spec.name          = "embulk-output-influxdb"
  spec.version       = "0.1.0"
  spec.authors       = ["joker1007"]
  spec.summary       = "InfluxDB output plugin for Embulk"
  spec.description   = "Dumps records to InfluxDB."
  spec.email         = ["kakyoin.hierophant@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/joker1007/embulk-output-influxdb"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'embulk', ['~> 0.7.4']
  spec.add_development_dependency 'bundler', ['~> 1.0']
  spec.add_development_dependency 'rake', ['>= 10.0']

  spec.add_runtime_dependency 'influxdb', ['~> 0.2']
  spec.add_runtime_dependency 'timezone'
end
