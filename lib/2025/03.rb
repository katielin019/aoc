LINES = INPUT.split("\n")

def part_1(input)
  # find the largest value in bank[0...-1]
  # find the largest value from bank[index..-1]

  # transform string of numbers to an array of numbers
  batteries.reduce do |memo, battery|
    battery > memo ? battery : memo
  end
  # find the first index of battery value and then search the remaining list for the next highest value

end

solve!("Part 1:", part_1(LINES))

def part_2(input)
end

solve!("Part 2:", part_2(LINES))
