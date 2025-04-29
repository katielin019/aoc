TREES = INPUT.split("\n")

def part_1(input)
  input.each_with_index.map { |x, i| x.slice(i*3 % x.size) == '#' ? 1 : 0 }.reduce(:+)
end

# [right, down]
SLOPES = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]]

# #... (0, 0)
# ....
# .#.. (2, 1) i = 2

def encounters(input, slope)
  if slope[1] % 2 == 0
    count = 0
    input.each_with_index.map do |x, i|
      if i % 2 == 0
        count += x.slice(i/2 % x.size) == '#' ? 1 : 0
      end
    end
    count
  else
    input.each_with_index.map { |x, i| x.slice(i * slope[0] % x.size) == '#' ? 1 : 0 }.reduce(:+)
  end
end

def part_2(input, slopes)
  slopes.map { |s| encounters(input, s) }.reduce(:*)
end

solve!("Part 1:", part_1(TREES))
solve!("Part 2:", part_2(TREES, SLOPES))
