class Cli
    def welcome
        puts "Welcome to the weather CLI app!"
        self.prompt_for_zip
    end

    def prompt_for_zip
        puts "Please enter your zip code"
        input = gets.strip
        new_location = Api.get_weather_by_zip(input)
    end

                

end