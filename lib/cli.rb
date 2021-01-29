class Cli
    def welcome
        puts "Welcome to the weather CLI app!"
        self.prompt_for_zip
    end

    def prompt_for_zip
        puts "Please enter your zip code"
        input = gets.strip
    end

                

end