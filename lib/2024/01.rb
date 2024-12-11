require 'algorithms'
include Containers

# numbers = INPUT.split("\n").map { |line| line.split(/\s+/) }

# FIRST = numbers.map(&:first).map(&:to_i)
# SECOND = numbers.map(&:last).map(&:to_i)

# solve! "The total of distances is:", FIRST.sort.zip(SECOND.sort).sum { |a, b| (b - a).abs }
# solve! "The total of similarity scores is:", FIRST.sum { |number| number * SECOND.count(number) }



LOCATIONS = INPUT.split("\n")

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

solve!("Part 1:", part_1(INPUT))
solve!("Part 2:", part_2(LOCATIONS))
