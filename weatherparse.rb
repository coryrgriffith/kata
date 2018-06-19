input = File.open('weather.dat', File::RDONLY){|f| f.read}
array = input.lines.map(&:split)

array.each do |row|
  p row
end

puts "--------------"
weather_numbers = array[2]
i = 0
array.each do |elements|
  prev_element = array[i - 1] unless i ==0
  if i == 0
    prev_element = array[i]
  end
  if i > 1
    if i < 32
      if elements[1].to_i - elements[2].to_i < weather_numbers[1].to_i - weather_numbers[2].to_i
        weather_numbers = elements
      end
    end
  end
  # p weather_numbers
  # p "------------"
  i += 1
  # puts "#{elements[0]} and #{elements[1]} and #{elements[2]}"
end
# p "------------"
# p "Final Result is:"
# p weather_numbers

p "Day #{weather_numbers[0]} has the smallest temperature spread of #{weather_numbers[1].to_i - weather_numbers[2].to_i} degrees Fahrenheit."