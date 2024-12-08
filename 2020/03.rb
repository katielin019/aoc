def part1(input)

end

def part2(input)

end

day = "03"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
# context == "aoc" ? file = File.new("2020/input/#{day} copy.txt") : file = File.new("input/#{day} copy.txt")
input = file.readlines

p part1(input)
p part2(input)
