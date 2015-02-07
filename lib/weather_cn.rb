require 'json'
require 'yaml'

require 'weather_cn/version'
require 'weather_cn/weather'
require 'weather_cn/Coder'

module WeatherCn

  module TopLevel
  	def weather 		
  		WeatherCn::Weather.get_weather(WeatherCn::Coder.get_city_code(self))
  	end  
    # "beijing".temp1
    # "beijing".temp6
    # "beijing".weather1
    # "beijing".weather6
    %w{temp weather}.each do |key|
		  6.times do |index|
		  	define_method("#{key}#{index+1}") do 
		  		tmp = self.weather
		  		puts tmp["weatherinfo"]["#{key}#{index+1}"]
		  	end
	  	end 
	  end
  end
end

# 有问题，会使得所有的对象都有weather方法
include WeatherCn::TopLevel