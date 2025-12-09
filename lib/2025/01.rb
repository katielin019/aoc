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
    if result / 100 != 0
      password += 1
    end
  end
  password
end

solve!("Part 2:", part_2(ROTATIONS))
