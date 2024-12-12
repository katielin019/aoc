require 'set'

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
    total += update[update.length/2] if scanner(update.map!(&:to_i).reverse)
  end
  total
end

solve!("part 1", main())
