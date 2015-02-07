module WeatherCn
  module Weather
  	# http://m.weather.com.cn/atad/101010100.html
  	# 返回json
    def self.get_weather(city_number)
	  	http = Net::HTTP.new("m.weather.com.cn")
	    request = Net::HTTP::Get.new("/atad/#{city_number}.html")
      JSON.parse(http.request(request).body)
	  end
  end
end
