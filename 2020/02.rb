require 'set'

def part1(input)
  valid = 0
  input.each do |x|         # 1-3 a: abcde
    arr = x.split(' ')      # ["1-3", "a:", "abcde"]
    letter = arr[1][0]
    # arr[0].split('-') => ["1", "3"]
    lower = arr[0].split('-').first.to_i
    upper = arr[0].split('-').last.to_i
    count = arr.last.count(letter)
    if count >= lower && count <= upper
      valid += 1
    end
  end
  valid
end

def part2(input)
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
  # chars.size() == 1 ? (chars.include?(letter) ? return false : return false) : c
  # chars.size() == 2 && chars.include?(letter) ? return true : return false
  return true if chars.size() == 2 && chars.include?(letter)
  return false
end

# def helper(args)
#   # ["1-3", "a:", "abcde"]
#   p args
#   positions = args[0].split('-').map(&:to_i)
#   p positions
#   letter = args[1][0]
#   str = args.last
#   chars = positions.map{|p| str[p-1]}
#   # chars = Set.new(positions.map{|p| str[p-1]})
#   p chars
#   chars = Set.new(chars)
#   # chars.size() == 1 ? (chars.include?(letter) ? return false : return false) : c
#   # chars.size() == 2 && chars.include?(letter) ? return true : return false
#   return true if chars.size() == 2 && chars.include?(letter)
#   return false
# end


day = "02"
context = Dir.getwd.split('/').last
context == "aoc" ? file = File.new("2020/input/#{day}.txt") : file = File.new("input/#{day}.txt")
# context == "aoc" ? file = File.new("2020/input/#{day} copy.txt") : file = File.new("input/#{day} copy.txt")
input = file.readlines

# p part1(input)
p part2(input)
