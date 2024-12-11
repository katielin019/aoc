def part_1(input)
  total = 0
  input.each do |x|
    matches = x.scan(/mul\(\d{1,3},\d{1,3}\)/)
    # matches.each do |x|
    #   total += compute(x)
    # end
    products = matches.flat_map { |x| compute(x) }
    total += products.inject(0, :+)
  end
  total
end

def compute(str)
  # "mul(" = 0-3
  s = str[4..-1].chop!
  vals = s.split(",").map(&:to_i)
  return vals.first * vals.last
end

def part_2(input)
  enabled = true
  total = 0
  input.each do |x|
    # matches = x.scan(/(mul\(\d{1,3},\d{1,3}\))|(don\'t)|(do)/)
    matches = x.scan(/mul\(\d{1,3},\d{1,3}\)|don\'t|do/)
    matches.each do |m|
      case m
      when "don't"
        enabled = false
      when "do"
        enabled = true
      else
        total += compute(m) if enabled
      end
    end
    # p matches
  end
  total
end

str = ["xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))"]
p part_2(str)

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
