def number_to_words(num)
    ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    teens = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    tens = {10 => "ten", 20 =>"twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    words = []
    if num/100 > 0
        words << "#{ones[num/100]} hundred"
        if (num%100)/10 == 1
            words << "#{teens[num%100]}"
            else
            words << "#{tens[(num%100/10)*10]}"
            words << "#{ones[num%100%10]}"
        end
        elsif num/10 >0
        if num/10 == 1
            words << "#{teens[num]}"
            else
            words << "#{tens[(num/10)*10]}"
            words << "#{ones[num%10]}"
        end
        elsif num < 10
        words << "#{ones[num]}"
    end
    words.join(' ')
end