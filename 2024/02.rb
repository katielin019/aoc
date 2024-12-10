require 'algorithms'
include Containers

def part_1(input)
  safe = 0
  input.each do |x|
    arr = x.split(' ').map(&:to_i)
    safe += 1 if check_levels(arr) == true
  end
  safe
end

def check_levels(arr)
  i = 0
  diff = []
  steps = (1..3).to_a
  safe = true
  while i < arr.length() - 1 && safe == true
    result = arr[i] - arr[i+1]
    steps.include?(result.abs()) ? diff[i] = result : safe = false
    i += 1
  end
  return false if safe == false
  return (diff.all? { |e| e > 0} || diff.all? { |e| e < 0 })
end

def same_sign?(arr)

end

def part_2(input)

end

def count_steps(arr)
  steps = []
  (0..arr.length() - 1).each do
    steps[i] = arr[i] - arr[i + 1]
  end
  steps
end

def main()
  day = "02"
  context = Dir.getwd.split('/').last
  context == "aoc" ? file = File.new("2024/input/#{day}.txt") : file = File.new("input/#{day}.txt")
  input = file.readlines

  start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  puts "Part 1: #{part_1(input)}"
  # puts "Part 2: #{part_2(input)}"
  end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = end_at - start_at
  puts "Elapsed time: #{elapsed}"
end

main()
