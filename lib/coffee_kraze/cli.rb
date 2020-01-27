require "pry"
class CoffeeKraze::CLI

    def call
        puts   " 
                 ..|'''.|           .'|.   .'|.                 
                .|'     '    ...   .||.   .||.     ....    ....  
                ||         .|  '|.  ||     ||    .|...|| .|...|| 
                '|.      . ||   ||  ||     ||    ||      ||      
                ''|....'   '|..|' .||.   .||.    '|...'  '|...' 
                                                                
                                                                
               '||'  |'                                  .|. 
                || .'    ... ..   ....   ......    ....  ||| 
                ||'|.     ||' '' '' .||  '  .|'  .|...|| '|' 
                ||  ||    ||     .|' ||   .|'    ||       |  
               .||.  ||. .||.    '|..'|' ||....|  '|...'  .  
                                                        '|' "
        puts "            -----------------------------------------------------
               Your One Stop Shop To Denvers Coffee Selections
        "
    
        list_shops
        choices
    end

    def list_shops
        CoffeeKraze::Shop.all_shops.each {|shop|
            puts shop.name
        }        
    end

    def choices 
        puts 'Welcome!  Please choose a shop or type "exit".'

        user_input = nil

        while user_input != "exit"
    
            print 'Which shop would you like details on (Please select by number such as "1"):   '

            user_input = gets.chomp
            user_input = user_input.strip
            case user_input

            when "1"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input.strip

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "2"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "3"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "4"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "5"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "6"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "7"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "8"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "9"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "10"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "11"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "12"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "13"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "14"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "15"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "16"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "17"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "18"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "19"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end
            when "20"
                puts "Excellent choice! you can do shop.number, .location, or .about to get info or back for main menu! Ex: shop.number"
                    shop = CoffeeKraze::Shop.all_shops[user_input.to_i - 1]
                    input = nil

                    while input != "back"
                        input = gets.chomp
                        input = input.strip
                    case input

                    when 'shop.name'
                        puts shop.name
                    when 'shop.location'
                        puts shop.location
                    when 'shop.number'
                        puts shop.number
                    when 'shop.about'
                        puts shop.about
                    else 
                        unless input == "back" 
                            puts "Hmmm... not sure about that option, lets try again."
                        end
                    end
                end

            else
                unless user_input == "exit" 
                    puts "Hmmm... not sure about that option, lets try again."
                end
            end
        end
        
    end
end