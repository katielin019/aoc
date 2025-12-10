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
  input.each do |step|
    direction = step[0] == "R" ? 1 : -1
    distance = step[1..]&.to_i
    if distance > LENGTH
      password += distance / LENGTH
      distance = distance - (distance / LENGTH) * LENGTH
    end
    if dial == 0
      delta = 100
      password += 1
    else
      delta = direction == 1 ? LENGTH - dial : dial
    end
    if distance > delta
      password += 1
    end
    dial = (dial + (direction * distance)) % LENGTH
  end
  password
end

solve!("Part 2:", part_2(ROTATIONS))
