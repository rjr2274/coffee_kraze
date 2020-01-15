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
        puts "Shop1 : "
    end

    def choices 
        puts "Which shop would you like details on: "
        user_input = gets.chomp
        
    end
end