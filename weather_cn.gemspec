# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weather_cn/version'

Gem::Specification.new do |spec|
  spec.name          = "weather_cn"
  spec.version       = WeatherCn::VERSION
  spec.authors       = ["Wu"]
  spec.email         = ["superbatironmans5@gmail.com"]
  spec.summary       = %q{ 中国城市天气查询 }
  spec.description   = %q{ 包含国内369个地级市未来3天常规预报以及三个气象指数（穿衣指数，舒适度指数，晨练指数）等天气服务数据 }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
