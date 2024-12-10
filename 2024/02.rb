require 'algorithms'
include Containers

def part1(input)
  safe = 0
  input.each do |x|
    levels = x.split(' ').map(&:to_i)
    safe += 1 if checkLevels(levels) == true
  end
  safe
end

def checkLevels(arr)
  diff = arr[0] - arr[1]
  if diff.abs() == 0 || diff.abs() > 3
    return false
  end

  conditions_met = true
  i = 1

  while conditions_met && (i < arr.length() - 1)
    delta = arr[i] - arr[i+1]
    # conditions_met = ((diff > 0) && (delta > 0)) && delta.abs() < 4
    # conditions_met = (delta.abs() < 4)
    i += 1
  end
  return conditions_met
end

def part2(input)

end

# p checkLevels([1, 3, 4, 5])

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
