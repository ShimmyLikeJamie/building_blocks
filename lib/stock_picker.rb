def stock_picker(arr)

  if arr

  result = []

  current_buy_index = 0
  current_sell_index = current_buy_index

  profit = 0

  while (current_buy_index < arr.length)
    current_sell_index = current_buy_index + 1

    while (current_sell_index < arr.length)
      if (arr[current_buy_index] - arr[current_sell_index]) > profit
        profit = arr[current_buy_index] - arr[current_sell_index]
        result = [current_buy_index, current_sell_index]
      end

      current_sell_index += 1
    end

    current_buy_index += 1
  end

  result
end

example_one = [3, 2, 7, 4, 5]
example_two = [4, 7, 12, 2]
example_three = [4, 0, 2]

puts "#{stock_picker(example_one)}"
puts "#{stock_picker(example_two)}"
puts "#{stock_picker(example_three)}"