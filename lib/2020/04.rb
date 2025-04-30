# REQUIRED FIELDS
# byr (Birth Year)
# iyr (Issue Year)
# eyr (Expiration Year)
# hgt (Height)
# hcl (Hair Color)
# ecl (Eye Color)
# pid (Passport ID)

# OPTIONAL FIELD
# cid (Country ID)

REQUIRED = ["byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid"]
PASSPORTS = INPUT.split("\n\n")

def part_1(input, fields)
  valid = 0
  input.each do |passport|
    valid += 1 unless fields.map { |field| passport[field] }.include? nil
  end
  valid
end

solve!("Part 1:", part_1(PASSPORTS, REQUIRED))
