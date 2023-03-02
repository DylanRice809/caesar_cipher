require "pry-byebug"

def is_capital? (string)
    string == string.upcase ? true : false
end

def shift_down (input, factor)
    output = []
    input.each_char do |char|
        if char.ord < 65
            output << char
            next
        end
        if is_capital?(char)
            capital = true
        end
        char = char.downcase.ord
        char -= factor
        if char < 97
            char += 26
        end
        char = char.chr
        capital == true ? output.push(char.upcase) : output.push(char)
    end
    output.join("")
end

p shift_down("Hello, there. aah!", 13)