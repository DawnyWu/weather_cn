module WeatherCn
  module Coder
  	# WeatherCn::Parser.get_city_code("beijing")
  	# => "101010100"
  	def self.get_city_code(city_name)
  		unless city_name.match(/\d/)
	  		yaml = YAML::load(File.read(File.expand_path("../data/city.yml",__FILE__)))
	  		yaml[city_name]
	  	end
  	end
  end
end