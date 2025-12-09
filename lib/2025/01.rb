START = 50
LENGTH = 100
ROTATIONS = INPUT.split("\n")

def part_1(input)
  password = 0
  dial = START
  # 11, R8 = 19 -> L19 = 0
  # R = +; L = -
  # if 0, L1 = 99
  # if 99, R1 = 0
  # if 5, L10 = 95
  # start = 50
  # PASSWORD = # of times the dial == 0 after any rotation
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
