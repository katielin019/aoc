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

#
def part_1(input)

end

# Returns an array of all invalid ids within a given range.
# @param range [Array<String>, #read] an array with the start and end values of the range
# @return [Array<Integer>] a collection of invalid ids (empty array if none)
def find_invalid_ids(range)
  result = []
  a, b = range
  if a.length.odd?
    a = next_invalid_id(a)
    if a > b
      return result
    end
  end
end

# Determines the next invalid id given a valid id with odd length.
# @param number [String, #read] the number as a string
# @return [Integer] the next invalid id
def next_invalid_id(number)
  sequence = 10 ** ((number.length + 1) / 2 - 1)
  sequence.to_s * 2
end

# Checks if an id is invalid
# @param id [Integer, #read] the provided id
# @return [Boolean]
def invalid?(id)
  return false if id.to_s.length.odd?
end

solve!("Part 1:", part_1(RANGES))

def part_2(input)
end

solve!("Part 2:", part_2(RANGES))
