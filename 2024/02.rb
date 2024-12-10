require 'algorithms'
include Containers

def part1(input)

end

def diff(a, b)
  (a.to_i - b.to_i).abs()
end

def part2(input)

end

def main()
  day = "02"
  context = Dir.getwd.split('/').last
  context == "aoc" ? file = File.new("2024/input/#{day}.txt") : file = File.new("input/#{day}.txt")
  input = file.readlines

  start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  puts "Part 1: #{part1(input)}"
  # puts "Part 2: #{part2(input)}"
  end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = end_at - start_at
  puts "Elapsed time: #{elapsed}"
end

main()
