def part1(input)
  count = 0;
  input.each do |x|
    # 2-6 w: wkwwwfwwpvw
    arr = x.split(' ')
    # ["2-6", "w:", "wkwwwfwwpvw"]
    # /a{1,3}/
    letter = arr[1][0]
    range = arr.first.split('-')
    lower = range.first
    upper = range.last
     if arr.last.match?(/#{letter}{#{lower},#{upper}}/)
      count += 1
     end
  end
  return count
end

day = "02"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
input = file.readlines

p part1(input)
