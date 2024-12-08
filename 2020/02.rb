def part1(input)
  valid = 0
  input.each do |x|
    arr = x.split(' ')
    letter = arr[1][0]
    lower = arr[0].split('-').first.to_i
    upper = arr[0].split('-').last.to_i
    count = arr.last.count(letter)
    if count >= lower && count <= upper
      valid += 1
    end
  end
  valid
end


day = "02"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
input = file.readlines

p part1(input)
