RANGE_MATCHER = /(?<start>\d+)-(?<end>\d+)/
RANGES = INPUT.split(",").map do |range|
  range.match(RANGE_MATCHER).captures
end

# [[11, 22], ... [2121212118, 2121212124]]

def part_1(input)

end

def find_invalid(range)
  a, b = range
  if a.length.odd?
    a = next_invalid_id(a)
  end
  # lower_bound = a[0..a.length/2].to_i
end

# Determines the next invalid id given a valid id with odd length
#
# @param [String, #read] number
# @return [int] the invalid id
def next_invalid_id(number)
  sequence = 10 ** ((number.length + 1) / 2 - 1)
  sequence.to_s * 2
end

solve!("Part 1:", part_1(RANGES))

def part_2(input)
end

solve!("Part 2:", part_2(RANGES))
