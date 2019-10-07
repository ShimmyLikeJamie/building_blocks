def substrings (string, dictionary)
  result = Hash.new(0)
  words = string.downcase.split(" ")
  current_substring = ""

  words.each do |word|
    letters = word.split("")

    letters.each_with_index do |letter, index|

      i = index

      while i < letters.length
        current_substring += letters[i]

        if dictionary.include? current_substring
          result[current_substring] += 1
        end

        i += 1
      end

      current_substring = ""
    end
  end

  return result
end

test_dictionary = ["hi", "hello", "el", "h", "ow"]
test_string = "Hello, hi, how are you? Are are you alright?"

puts "#{substrings(test_string, test_dictionary)}"