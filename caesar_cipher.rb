def caesar_cipher (str, shift)
  arr = str.codepoints
  result = []

  arr.each do |x|

    uppercase = false
    symbol = false


    if x >= 65 && x <= 90
      uppercase = true
    elsif x <= 64 || (x >= 91 && x <= 96) || x >= 123
      symbol = true
    end

    if symbol == true
      result.push(x.chr)
      next
    end

    x -= shift

    if x < 65 && uppercase == true
      x += 26
    elsif x < 97 && uppercase == false
      x += 26
    end

    result.push(x.chr)
  end
  
  final_string = result.join("")
  
  final_string
end

puts caesar_cipher("Hello humans!", 15)
puts caesar_cipher("aA", 1)
puts caesar_cipher("I've done it!", 26)