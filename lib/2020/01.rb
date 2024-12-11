EXP_REPORT = INPUT.split("\n").map(&:to_i)
TARGET = 2020

def find_sum_entries(count)
	entries = EXP_REPORT.combination(count).detect { |vals| vals.sum == TARGET }
	entries.inject(:*)
end

solve!("Part 1:", find_sum_entries(2))
solve!("Part 2:", find_sum_entries(3))
