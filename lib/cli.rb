class Cli
  def welcome
    puts "Welcome to the weather CLI app!"
    self.prompt_for_zip
  end

  def prompt_for_zip
    puts "Please enter your zip code"
    input = gets.strip
    new_location = Api.get_weather_by_zip(input)
    if new_location
      self.weather_options(new_location)
    else
      puts "That zip code was invalid."
      self.prompt_for_zip
    end
  end

  def weather_options(location)
    puts "Please choose from the following list for weather information for #{location.name}"
    puts "1. Windspeed"
    puts "2. Temp"
    puts "3. Feels Like"
    puts "4. Cloud Cover"
    self.user_selection(location)
  end

  def user_selection(location)
    input = gets.strip

    if input == "1"
      puts "The wind speed in #{location.name} is #{location.wind_speed}"
    elsif input == "2"
      puts "The temperature in #{location.name} is #{location.temp}"
    elsif input == "3"
      puts "In #{location.name} it feels like #{location.feels_like}"
    elsif input == "4"
      "The cloud cover in #{location.name} is #{location.cloud_cover}"
    else
      puts "That selection was invalid"
      self.weather_options(location)
    end
  end
end
