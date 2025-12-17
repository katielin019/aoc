BANKS = INPUT.split("\n")

def part_1(input)
  # transform string of numbers to an array of numbers
  input.reduce do |total, bank|
    bank.chars.map(&:to_i)
  end
  # call largest_joltage
  # sum total output joltage
end

def largest_joltage(bank)
  first = max(bank[0...-1])
  partition = bank.index(first) + 1
  remaining = bank[partition..-1]
  second = max(remaining)
  first * 10 + second
end

def max(batteries)
  batteries.reduce do |memo, battery|
    battery > memo ? battery : memo
  end
end

solve!("Part 1:", part_1(LINES))

def part_2(input)
end

solve!("Part 2:", part_2(LINES))
