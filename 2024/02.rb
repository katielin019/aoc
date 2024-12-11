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
  while i < arr.length - 1 && safe == true
    result = arr[i] - arr[i+1]
    steps.include?(result.abs()) ? diff[i] = result : safe = false
    i += 1
  end
  return false if safe == false
  return same_sign?(diff)
end

def same_sign?(arr)
  return (arr.all? { |e| e.positive? } || arr.all? { |e| e.negative? })
end

def part_2(input)
  safe = 0
  input.each do |x|
    arr = x.split(' ').map(&:to_i)
    valid = false
    (0...arr.length).each do |i|
      shifted = shift(arr, i)
      valid = check_levels(shifted)
      break if valid == true
    end
    safe += 1 if valid == true
  end
  safe
end

def count_steps(arr)
  steps = []
  (0...arr.length - 1).each { |i| steps[i] = arr[i] - arr[i + 1] }
  steps
end

def shift(arr, i)
  copy = arr.clone
  copy.delete_at(i)
  copy
end

# arr = [8, 6, 4, 4, 1]
# (0...arr.length).each do |i|
#   shifted = shift(arr, i)
#   p shifted
#   p check_levels(shifted)
# end

def main()
  day = "02"
  context = Dir.getwd.split('/').last
  context == "aoc" ? file = File.new("2024/input/#{day}.txt") : file = File.new("input/#{day}.txt")
  input = file.readlines

  start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  # puts "Part 1: #{part_1(input)}"
  puts "Part 2: #{part_2(input)}"
  end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = end_at - start_at
  puts "Elapsed time: #{elapsed}"
end

main()
