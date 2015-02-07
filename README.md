# WeatherCn

中国大城市未来六天天气查询, 数据来源 www.weather.com.cn

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weather_cn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weather_cn

## Usage
```ruby
# 查询明天天气
"beijing".weather1 
=> "晴"
# 查询六天后天气
"beijing".weather6 
=> "阴"

# 查询明天温度
“beijing”.temp1
=> "-7℃~3℃"
# 查询六天后温度
“beijing”.temp1
=> "-3℃~5℃"

== Contributing

1. Fork it ( https://github.com/superbatironmans5/weather_cn/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
