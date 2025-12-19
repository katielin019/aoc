BANKS = INPUT.split("\n")

def part_1(input)
  banks = input.map { |line| line.chars.map(&:to_i) }
  banks.reduce(0) do |total, bank|
    total + largest_joltage(bank, 2)
  end
end

# def largest_joltage(bank)
#   first = joltage_helper(bank[0...-1])
#   partition = bank.index(first) + 1
#   second = joltage_helper(bank[partition..-1])
#   first * 10 + second
# end

def largest_joltage(bank, count)
  result, partition = 0, 0
  while count > 0
    window = bank[partition..-count]
    jolts = joltage_helper(window)
    result = result * 10 + jolts
    count -= 1
    partition += window.index(jolts) + 1
  end
  result
end

def joltage_helper(batteries)
  batteries.reduce do |memo, battery|
    battery > memo ? battery : memo
  end
end

solve!("Part 1:", part_1(BANKS))

def part_2(input)
  banks = input.map { |line| line.chars.map(&:to_i) }
  banks.reduce(0) do |total, bank|
    total + largest_joltage(bank, 12)
  end
end

puts part_2(input).class

solve!("Part 2:", part_2(BANKS))
