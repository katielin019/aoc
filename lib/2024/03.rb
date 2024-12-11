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

MEM = INPUT.split("\n")

solve!("Part 1", part_1(MEM))
solve!("Part 2", part_2(MEM))
