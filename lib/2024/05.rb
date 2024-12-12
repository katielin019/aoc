require 'set'

INPUT = <<~TEXT
      47|53
      97|13
      97|61
      97|47
      75|29
      61|13
      75|53
      29|13
      97|29
      53|29
      61|53
      97|53
      61|29
      47|13
      75|47
      97|75
      47|61
      75|61
      47|29
      75|13
      53|13

      75,47,61,53,29
      97,61,53,29,13
      75,29,13
      75,97,47,61,53
      61,13,29
      97,13,75,29,47
      TEXT

# puts hash

# {"47"=>[["47", "53"], ["47", "13"], ["47", "61"], ["47", "29"]], "97"=>[["97", "13"], ["97", "61"], ["97", "47"], ["97", "29"], ["97", "53"], ["97", "75"]], "75"=>[["75", "29"], ["75", "53"], ["75", "47"], ["75", "61"], ["75", "13"]], "61"=>[["61", "13"], ["61", "53"], ["61", "29"]], "29"=>[["29", "13"]], "53"=>[["53", "29"], ["53", "13"]]}
# {47=>[53, 13, 61, 29], 97=>[13, 61, 47, 29, 53, 75], 75=>[29, 53, 47, 61, 13], 61=>[13, 53, 29], 29=>[13], 53=>[29, 13]}

SECTIONS = INPUT.split("\n\n")
RULES = SECTIONS.first.split
ORD = RULES.map { |rule| rule.split("|") }

HASH = {}

LEFT = ORD.map(&:first).to_set
LEFT.each do |page|
  HASH[page.to_i] = ORD.select { |rule| rule.first == page }.map(&:last).map(&:to_i)
end

UPDATE_LIST = SECTIONS.last.split
UPDATES = UPDATE_LIST.map { |u| u.split(",") }

def scanner(arr)
  violations = HASH.values_at(arr.first).flatten
  arr.shift
  if arr.empty?
    return true
  elsif violations.empty?
    return scanner(arr)
  elsif violations.intersect?(arr)
    return false
  else
    return scanner(arr)
  end
end

def main()
  total = 0
  UPDATES.each do |update|
    # p update if scanner(update.map!(&:to_i).reverse)
    total += update[update.length/2] if scanner(update.map!(&:to_i).reverse)
  end
  p total
end

main()

# solve!("part 1", main())

## APPROACH ?? :: 61,13,29 => 29,13,61 && 29|13
# 29,61,13 (not directly next to each other)
#
# reverse the array
# keep rules intact
# check if any page lists ADHERE to one of the rules (i.e. reverse order would break them)
#
# get arr.first (29)
# get rules for page (29|13)
# shift arr ([29,61,13] => [61,13])
# check if arr.include?(second_half_of_rule)
