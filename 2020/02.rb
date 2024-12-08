def part1(input)
  count = 0;
  input.each do |x|
    arr = x.split(' ')
    pattern = helper(arr)
    # count += 1 if arr.last.match?(/#{pattern}/)
    arr.last.match?(/#{pattern}/) ? count += 1 : log(arr, pattern)
  end
  count
end

def log(arr, pattern)
  puts "#{arr.last}.match?(/#{pattern}/)"
end

def helper(arr)
  letter = arr[1][0]
  range = arr.first.split('-')
  lower = range.first
  upper = range.last
  # if arr.last.match?(/#{letter}{#{lower},#{upper}}/)
  #   count += 1
  #   p "/#{letter}{#{lower},#{upper}}/"
  # end
  return "#{letter}{#{lower},#{upper}}"
end


day = "02"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
input = file.readlines

p part1(input)
