RANGE_MATCHER = /(?<start>\d+)-(?<end>\d+)/
RANGES = INPUT.split(",").map do |range|
  range.match(RANGE_MATCHER).captures
end

# [[11, 22], ... [2121212118, 2121212124]]

def part_1(input)

end

def find_subset_range(range)
  a, b = range
  if a.length.odd?
    # find next suitable value where length is even AND value is less than b
    # else, return -1
  end
end

def find_invalid(range)
  # a, b = range

end

solve!("Part 1:", part_1(RANGES))

def part_2(input)
end

solve!("Part 2:", part_2(RANGES))
