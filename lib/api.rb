class Api
@@api_key = "2e5a7bbe0a508c6a52f4083839ea0eb5"

def self.get_weather_by_zip(zip)
    @@url = "api.openweathermap.org/data/2.5/weather?zip=#{zip},us&units=imperial&appid=#{@@api_key}"
       response = HTTParty.get(@@url)
       weather_hash = {name: response["name"], wind_speed: response["wind"]["speed"], temp: response["main"]["temp"]}
       Location.new(weather_hash)
    end
end