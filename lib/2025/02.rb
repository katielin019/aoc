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
  total = 0
  input.each do |range|
    # puts range
    ids = find_invalid_ids(range.map(&:to_i))
    # puts ids.length
    total += ids.reduce(:+) || 0
  end
  total
end

# Returns an array of all invalid ids within a given range.
# @param range [Array<Integer>] an array representing a range of values
# @return [Array<Integer>] a collection of invalid ids (empty array if none)
def find_invalid_ids(range)
  result = []
  a, b = range.map(&:to_i)
  a = next_invalid_id(a) unless invalid?(a)

  while a <= b
    result << a
    a = next_invalid_id(a)
  end

  result
end

# Returns the first half of the id unless the id has an odd number of digits.
# @param id [Integer]
# @return [Integer, nil]
def first_half(id)
  s = id.to_s
  return nil if s.length.odd?
  half = s.length / 2
  s[0...half].to_i
end

# Returns the second half of the id unless the id has an odd number of digits.
# @param id [Integer]
# @return [Integer, nil]
def second_half(id)
  s = id.to_s
  return nil if s.length.odd?
  half = s.length / 2
  s[half..-1].to_i
end

# Checks if an id is invalid.
# @param id [Integer] the provided id
# @return [Boolean]
def invalid?(id)
  first = first_half(id)
  return false if first.nil?
  first == second_half(id)
end

# Determines the next invalid id.
# @param id [Integer]
# @return [Integer] the next invalid id
def next_invalid_id(id)
  if id.to_s.length.odd?
    id = round_up(id)
  end
  first, second = first_half(id), second_half(id)

  if invalid?(id) or first < second
    half = first + 1
    return (half.to_s * 2).to_i
  else
    return (first.to_s * 2).to_i
  end
end

# Finds the next number containing an even number of digits.
# @param id [Integer] an id with an odd length
# @return [Integer] a rounded up value
def round_up(id)
  s = id.to_s
  10 ** s.length.to_i
end

# Sums the invalid ids for all ranges in the puzzle input.
# @param input {RANGES}
def part_2(input)
  # repeated sequence of digits at least twice (odd/even rule no longer applies in the same way)
  # for sequences of even length, their resultant id also must be even (e.g. "10" -> "101010")
  # so basically if there's more than one unique digit contained in the string, then it must be of even length
  #
  # maybe do slice and check??
end

solve!("Part 1:", part_1(RANGES))
# solve!("Part 2:", part_2(RANGES))

# 824824824
# 446
