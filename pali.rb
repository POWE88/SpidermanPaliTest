#/****** INSTANCE VARIABLES ******/
@all_words_array = Array.new #holds full word list
@pali_array = Array.new # holds palindromes from full word list

#/****** HELPER METHODS ******/

#Loads file and assigns each value to @all_words_array
def load_words_file_to_array
    file = './words.txt'

    File.readlines(file).each do | line |
        @all_words_array.push(line.chomp)
    end
end

#Checks each word in @all_words_array
#if a word is a palindrome and is an alfpha character, word is added to @pali_array
def parse_array_word_list(need_capitals)
    @all_words_array.each do | word |
        if word =~ /[[:alpha:]]/ && is_palindrome?(word, need_capitals)  
            @pali_array.push(word)
        end
    end
end

#Verifies that a given word is a palindrome (reads the same backwoards and forwards) based on the given word and whether or not capital letters should be retained
#REQUIRES: word as a string value, and need_capital as a string 'y' or 'n'
#RETURNS: Boolean true if palindrom, false if not
def is_palindrome?(word, need_capitals)
    
    capitals = need_capitals.downcase

    if word.length == 0
        return false
    else
        left_index = 0
        right_index = word.length - 1
        while left_index < right_index
            if capitals == 'y' || capitals == 'yes'
                if word[left_index] != word[right_index]
                    return false
                end
            else
                if word[left_index].downcase != word[right_index].downcase
                    return false
                end
            end
            left_index = left_index + 1
            right_index = right_index - 1
        end
        return true
    end
end 

#Prints a specified number of palindroms from @pali_array
#REQUIRES: Number of palindrones needed as an integer 
def get_palindromes(number_of_words)
    i = 0
    until i > number_of_words do
        puts "#{i+1}. #{@pali_array[i]}" 
        i = i + 1
    end
end

#Takes in a user input and convert it to an integer
#RETURNS: Integer value
def get_user_input_for_integer
    input = gets.chomp
    input.to_i
end

#Prints a given string to terminal with a given delay
#REQUIRES: output_string for the output string, and wait_time for the amount to time to sleep between each printed letter 
def slowly_spell_in_terminal(output_string, wait_time)
    time = wait_time.to_i
    output_string.each_char { |single_char| print single_char; sleep(wait_time); $stdout.flush }
end

#/****** MAIN DRIVER ******/

def main_driver

    slowly_spell_in_terminal("\nSpiderman, sorry to hear you need to save Mary Jane... again.\n", 0.05)
    sleep(1)
    slowly_spell_in_terminal("Let me guess, is it the Palindromicon?\n", 0.05)
    sleep(1 
    slowly_spell_in_terminal("Yep, thought so.\n", 0.05)
    sleep(1)
    slowly_spell_in_terminal("No worries, you've come to the right place! ", 0.05)

    #Loop that repeats palindrome query if the user needs more palindromes
    begin
        slowly_spell_in_terminal("How many palindromes do you need this time?\n", 0.05)
        sleep(0.05)
        slowly_spell_in_terminal("Enter a positive integer, hit enter, and I'll see what I can do: ", 0.05)
        
        number_of_palindromes_needed = get_user_input_for_integer  

        slowly_spell_in_terminal("Do capital letters matter to you this time? (y/n): ", 0.05)

        retain_capitals = gets.chomp
        
        load_words_file_to_array
        parse_array_word_list(retain_capitals)

        slowly_spell_in_terminal("\nAh... Hmmm... Yep... sure... Okay! I think I've got it.\n\n", 0.05)

        puts "Here are your Palnidromes: \n"
        get_palindromes(number_of_palindromes_needed-1)

        slowly_spell_in_terminal("\nDo you need more palindromes? (y/n): ", 0.05)
        continue = gets.chomp

    end while continue == 'y' || continue =='yes'

    slowly_spell_in_terminal("\nNo problem. Good luck, Spiderman! Please let me know if you need recue Mary Jane again.\n", 0.05)
    
end

#calles main driver
main_driver

