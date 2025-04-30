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

RULES = {"byr": [1920, 2002],
         "iyr": [2010, 2020],
         "eyr": [2020, 2030],
         "hgt": {"cm": [150, 193], "in": [59, 76]},
         "hcl": ["#000000", "#ffffff"],
         "ecl": ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"],
         "pid": [000_000_000, 999_999_999]}

def part_2(input)
end
