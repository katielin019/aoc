LINES = INPUT.split("\n")

def part_1(input)
  # transform string of numbers to an array of numbers

  # # find the largest value in bank[0...-1]
  first = batteries.reduce do |memo, battery|
    battery > memo ? battery : memo
  end
  # find the first index of battery value and then search the remaining list for the next highest value
  first_idx = batteries.index(first)
  remaining = batteries[first_idx + 1..-1]
  # find the largest value from bank[index + 1..-1]
  second = remaining.reduce do |memo, battery|
    battery > memo ? battery : memo
  end
  second_idx = remaining.index(second) + first_idx + 1
end

def largest_joltage(bank)
  first = bank.reduce do |memo, battery|
    battery > memo ? battery : memo
  end

end

solve!("Part 1:", part_1(LINES))

def part_2(input)
end

solve!("Part 2:", part_2(LINES))
