require 'algorithms'
include Containers

# def part1(input)
#   safe = 0
#   input.each do |x|
#     arr = x.split(' ').map(&:to_i)
#     safe += 1 if checkLevels(arr) == true
#   end
#   safe
# end

def checkLevels(arr)
  i = 0
  diff = []
  steps = (1..3).to_a
  safe = true
  while i < arr.length() - 1 && safe == true
    result = arr[i] - arr[i+1]
    steps.include?(result.abs()) ? diff[i] = result : safe = false
    i += 1
  end
  if safe == true
    return (diff.all? { |e| e > 0} || diff.all? { |e| e < 0 })
  end
  return false
end

# def part2(input)

# end

p checkLevels([1, 3, 4, 5])     # true
p checkLevels([1, 3, 6, 7, 9])  # true
p checkLevels([1, 3, 2, 4, 5])  # false
p checkLevels([9, 7, 6, 2, 1])  # false
p checkLevels([8, 6, 4, 4, 1])  # false
p checkLevels([10, 7, 5, 3, 1]) # true

# def main()
#   day = "02"
#   context = Dir.getwd.split('/').last
#   context == "aoc" ? file = File.new("2024/input/#{day}.txt") : file = File.new("input/#{day}.txt")
#   input = file.readlines

#   start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
#   puts "Part 1: #{part1(input)}"
#   # puts "Part 2: #{part2(input)}"
#   end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
#   elapsed = end_at - start_at
#   puts "Elapsed time: #{elapsed}"
# end

# main()
