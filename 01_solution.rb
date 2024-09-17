require 'set'

def part1(target)
	file = File.open("01_input.txt")
	input = file.readlines.map(&:to_i)
	set = Set.new(input)
	# p set	
	input.each do |x|
		if set.add?(target - x) == nil
			# return "#{x}, #{target - x}"
			return x * (target - x)
		end
	end
end

p part1(2020)
