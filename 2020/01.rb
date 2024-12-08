require 'set'

def part1(entries, set, target)
	entries.each do |x|
		if set.include?(target - x)
			# return "#{x}, #{target - x}"
			return x * (target - x)
		end
	end
end

def part2(entries, set, target)
	entries.each do |x|
		entries.each do |y|
			if set.include?(target - x - y)
				return x * y * (target - x - y)
			end
		end
	end
end

file = File.new('input/01.txt')
input = file.readlines.map(&:to_i)
set = Set.new(input)

p part1(input, set, 2020)
p part2(input, set, 2020)
