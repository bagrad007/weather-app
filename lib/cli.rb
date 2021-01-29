class Cli
    def welcome
        puts "Welcome to the weather CLI app!"
        self.prompt_for_zip
    end

    def prompt_for_zip
        puts "Please enter your zip code"
        input = gets.strip
        new_location = Api.get_weather_by_zip(input)
        self.weather_options(new_location)
    end

    def weather_options(location)
        puts "Please choose from the following list for weather information for #{location.name}"
        puts "1. Windspeed"
        puts "2. Temp"
        puts "3. Feels Like"
        puts "4. Cloud Cover"
    end

                

end