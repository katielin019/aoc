def part_1(input)

end

def part_2(input)

end

day = "03"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
# context == "aoc" ? file = File.new("2020/input/#{day} copy.txt") : file = File.new("input/#{day} copy.txt")
input = file.readlines

start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
p part_1(input)
p part_2(input)
end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = end_at - start_at
p elapsed