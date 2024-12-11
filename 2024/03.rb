# str.to_enum(:scan, regex).map { Regexp.last_match }
# source: https://brettterpstra.com/2023/12/17/ruby-regexp-scan-with-matchdata/

# regexp: /mul\(\d{1,3},\d{1,3}\)/

def part_1(input)
  total = 0
  input.each do |x|
    matches = x.scan(/mul\(\d{1,3},\d{1,3}\)/)
    matches.each do |x|
      total += compute(x)
    end
    # matches.map { |x| compute(x).to_i }
    # total += matches.inject(0, :+)  # returns 0 (instead of nil) if array is empty
  end
  total
end

def compute(str)
  # "mul(" = 0-3
  s = str[4..-1].chop!
  vals = s.split(",").map(&:to_i)
  return vals.first * vals.last
end

str = ["xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"]
p part_1(str)

def part_2(input)
end

def main()
  day = "03"
  year = "2024"
  context = Dir.getwd.split('/').last
  context == "aoc" ? file = File.new("#{year}/input/#{day}.txt") : file = File.new("input/#{day}.txt")
  input = file.readlines

  start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  puts "Part 1: #{part_1(input)}"
  # puts "Part 2: #{part_2(input)}"
  end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = end_at - start_at
  puts "Elapsed time: #{elapsed}"
end

# main()
