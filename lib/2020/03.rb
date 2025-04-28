TREES = INPUT.split("\n")

def part_1(input)
  input.each_with_index.map { |x, i| x.slice(i*3 % x.size) == '#' ? 1 : 0}.reduce(:+)
end

solve!("Part 1:", part_1(TREES))
