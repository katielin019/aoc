RANGE_MATCHER = /(?<start>\d+)-(?<end>\d+)/
RANGES = INPUT.split(",").map do |range|
  range.match(RANGE_MATCHER).captures.map { |x| x.to_i }
end

# [[11, 22], ... [2121212118, 2121212124]]

def part_1(input)
  invalid = []
  input.each do |range|
    a, b = range
    unless length(a) % 2 == 1 and length(a) == length(b)

    end
  end
end

def length(number)
  count = 1
  while number >= 10
    number /= 10
    count += 1
  end
  count
end

solve!("Part 1:", part_1(RANGES))

def part_2(input)
end

solve!("Part 2:", part_2(RANGES))
