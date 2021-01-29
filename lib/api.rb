class Api
@@api_key = "2e5a7bbe0a508c6a52f4083839ea0eb5"
    def self.get_weather_by_zip
        @@url = "api.openweathermap.org/data/2.5/weather?zip=94115,us&appid=#{@@api_key}"
    def self.get_weather_by_zip
       response = HTTParty.get(@@url)
    end
end