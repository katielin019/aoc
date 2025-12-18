BANKS = INPUT.split("\n")

def part_1(input)
  # banks = input.map { |line| line.chars.map(&:to_i) }
  # banks = input.map(&:to_i).digits.reverse
  banks.reduce(0) do |total, bank|
    total + largest_joltage(bank)
  end
end

def largest_joltage(bank)
  first = max(bank[0...-1])
  partition = bank.index(first) + 1
  second = max(bank[partition..-1])
  first * 10 + second
end

def max(batteries)
  batteries.reduce do |memo, battery|
    battery > memo ? battery : memo
  end
end

solve!("Part 1:", part_1(BANKS))

def part_2(input)
end

solve!("Part 2:", part_2(BANKS))
