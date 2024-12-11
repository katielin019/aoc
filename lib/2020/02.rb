require 'set'

PASSWORDS = INPUT.split("\n")

def part_1(input)
  valid = 0
  input.each do |x|         # 1-3 a: abcde
    arr = x.split(' ')      # ["1-3", "a:", "abcde"]
    letter = arr[1][0]
    lower = arr[0].split('-').first.to_i
    upper = arr[0].split('-').last.to_i
    count = arr.last.count(letter)
    if count >= lower && count <= upper
      valid += 1
    end
  end
  valid
end

def part_2(input)
  valid = 0
  input.each do |x|
    valid += 1 if helper(x.split(' '))
  end
  valid
end

def helper(args)
  # ["1-3", "a:", "abcde"]
  positions = args[0].split('-').map(&:to_i)
  letter = args[1][0]
  str = args.last
  chars = Set.new(positions.map{|p| str[p-1]})
  return true if chars.size() == 2 && chars.include?(letter)
  return false
end

solve!("Part 1:", part_1(PASSWORDS))
solve!("Part 2:", part_2(PASSWORDS))
