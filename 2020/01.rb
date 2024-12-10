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

day = "01"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
input = file.readlines.map(&:to_i)
set = Set.new(input)

start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
p part1(input, set, 2020)
p part2(input, set, 2020)
end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = end_at - start_at
p elapsed
