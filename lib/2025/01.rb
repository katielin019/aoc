START = 50
LENGTH = 100
ROTATIONS = INPUT.split("\n")

def part_1(input)
  password, dial = 0, START
  input.each do |rotation|
    direction = rotation[0] == "R" ? 1 : -1
    distance = rotation[1..]&.to_i
    dial = (dial + (direction * distance)) % LENGTH
    if dial == 0
      password += 1
    end
  end
  password
end

solve!("Part 1:", part_1(ROTATIONS))

def part_2(input)
  password, dial = 0, START
  input.each do |rotation|
    direction = rotation[0] == "R" ? 1 : -1
    distance = rotation[1..]&.to_i
    if distance >= LENGTH
      password += distance / LENGTH
      distance = distance % LENGTH
    end
    result = dial + (direction * distance)
    dial = result % LENGTH
    if dial == 0
      password += 1
    elsif result / 100 != 0
      password += 1
    end
  end
  password
end

solve!("Part 2:", part_2(ROTATIONS))

# 50 - 68 = -18 % 100 = 82 => -18 / 100 = -1
# 82 - 30 = 52 => 52 / 100 = 0
# 52 + 48 = 100 % 100 = 0 => 100 / 100 = 1
# 0 - 5 = -5 % 100 = 95 => 95 / 100 = 0
# 95 + 60 = 155 % 100 = 55 => 155 / 100 = 1
# 55 - 55 = 0 % 100 = 0 => 0 / 100 = 0
# 0 - 1 = -1 % 100 = 99 => -1 / 100 = -1
# 99 - 99 = 0
# 0 + 14 = 14 => 14 / 100 = 0
# 14 - 82 = -68 % 100 = 32 => -68 / 100 = -1
#
# if dial == 0 exactly, incr. by one
# otherwise, check if (dial + direction * distance) / 100
#
#
# WAIT ... if dial pointing at 50, R1000 => + 10 times
# if R100 with 50, +1 password, distance = 0
# if L100 with 50, +1 password
