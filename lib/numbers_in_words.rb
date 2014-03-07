def numbers_in_words(number)
  word_representations = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
                           6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
                           11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
                           16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty",
                           30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  magnitudes = { 3 => "thousand", 2 => "hundred", 1 => "", 0 => ""}
  result = ''


  temp = number
  magnitude = 3
  while temp > 0
    digit = temp / 10**magnitude
    if digit > 0
      result += word_representations[digit] + " " + magnitudes[magnitude]
      temp %= 10**magnitude
    end
    magnitude -= 1
  end

  # thousands = number / 1000
  # hundreds = number%1000 / 100
  # tens = (number%100) / 10
  # ones = number%10

  # ones_place = []
  # tens_place = []

  # tens_string = word_representations[number % 100 / 10 * 10]
  # ones_string = word_representations[number % 10]


  # hundreds_string = word_representations[hundreds] + " hundred"
  # thousands_string = word_representations[thousands] + " thousand"

  # if number >= 1000
  #   result += thousands_string
  #   unless number % 1000 == 0
  #     result += " "
  #   end
  # end

  # if hundreds > 0
  #   result += hundreds_string
  #   unless number % 100 == 0
  #     result += " "
  #   end
  # end
  # result += tens_string + " " + ones_string #word_representations[number%100]

  result
end

puts numbers_in_words(2578)
