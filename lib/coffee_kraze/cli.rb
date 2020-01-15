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
        CoffeeKraze::Shop.all_shops
    end

    def choices 
        puts 'Welcome!  Please choose a shop or type "exit".'

        user_input = nil

        while user_input != "exit"
    
            print "Which shop would you like details on:   "

            user_input = gets.chomp
            user_input = user_input.strip.downcase
            case user_input

            when "one"
                puts "Im one"
            when "two"
                puts "Im two"
            else
                unless user_input == "exit" 
                    puts "Hmmm... not sure about that option, lets try again."
                end
            end
        end
        
    end
end