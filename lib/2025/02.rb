# A regex pattern to capture the start and end values of a range.
# @return [Regexp]
RANGE_MATCHER = /(?<start>\d+)-(?<end>\d+)/

# Parsed input ranges.
# Puzzle input is a single line of comma-separated ranges.
# Each element is a two-element array `[start, end]` extracted from the input.
# Values are parsed using {RANGE_MATCHER}
# @return [Array<Array<String>>]
RANGES = INPUT.split(",").map do |range|
  range.match(RANGE_MATCHER).captures
end

# Sums the invalid ids for all ranges in the puzzle input.
# @param input {RANGES}
def part_1(input)

end

# Returns an array of all invalid ids within a given range.
# @param range [Array<String>] an array with the start and end values of the range
# @return [Array<Integer>] a collection of invalid ids (empty array if none)
def find_invalid_ids(range)
  result = []
  a, b = range
  # initialize start value with first invalid id
  if a.length.odd?
    a = next_invalid_id(a)
  else
    unless invalid?(a)
      a = next_invalid_id(a)
    end
  end
  # check if first invalid id is within the range
  if a > b
    return result
  end
  # find all invalid ids
  while a <= b and invalid?(a)
    result.push(a)
    a = next_invalid_id(a)
  end
  # if invalid?(a)
  #   result.push(a)

  # end
end

# Determines the next invalid id.
# @param number [String] the number as a string
# @return [String] the next invalid id
def next_invalid_id(id)
  s = id.to_s
  half =
    if invalid?(id)
      s[0...s.length/2].to_i
    else
      10 ** ((s.length - 1) / 2)
    end
  x = half + 1
  return (x.to_s * 2).to_i
end

# Checks if an id is invalid
# @param id [Integer] the provided id
# @return [Boolean]
def invalid?(id)
  s = id.to_s
  return false if s.length.odd?
  half = s.length / 2
  return s[0...half] == s[half..-1]
end

# def part_2(input)
# end

solve!("Part 1:", part_1(RANGES))
# solve!("Part 2:", part_2(RANGES))
