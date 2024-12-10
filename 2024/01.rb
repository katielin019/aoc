require 'algorithms'
include Containers

def part_1(input)
  left = MinHeap.new()
  right = MinHeap.new()
  input.each do |x|
    vals = x.split(' ')
    left.push(vals.first)
    right.push(vals.last)
  end

  total = 0
  while left.size > 0
    total += diff(left.pop(), right.pop())
  end
  total
end

def diff(a, b)
  (a.to_i - b.to_i).abs()
end

def part_2(input)
  left = []
  right = Hash.new(0)
  input.each do |x|
    vals = x.split(' ')
    left.push(vals.first.to_i)
    right[vals.last.to_i] += 1
  end

  similarity = 0
  left.each do |y|
    similarity += (y * right[y])
  end
  similarity
end

def main()
  day = "01"
  context = Dir.getwd.split('/').last
  context == "aoc" ? file = File.new("2024/input/#{day}.txt") : file = File.new("input/#{day}.txt")
  # context == "aoc" ? file = File.new("2024/input/#{day} copy.txt") : file = File.new("input/#{day} copy.txt")
  input = file.readlines

  start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  puts "Part 1: #{part_1(input)}"
  puts "Part 2: #{part_2(input)}"
  end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = end_at - start_at
  puts "Elapsed time: #{elapsed}"
end

main()
