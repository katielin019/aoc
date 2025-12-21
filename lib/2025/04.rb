GRID = INPUT.split("\n").map(&:chars)

def part_1(input)
  adjacent = Array.new(input.size) { Array.new(input[0].size, 0)} # initialize using a block to create unique objects for inner arrays
  input.each_with_index do |row, row_index|
    row.each_with_index do |col, col_index|
      if col == "@"
        update_counts(adjacent, row_index, col_index)
      end
    end
  end
  adjacent.reduce(0) do |total, row|
    total + row.count { |cell| cell < 4}
  end
end

# if there's a roll of paper at input[x][y]
# update the adjacency count grid by
# visiting each adjacent position and
# incrementing their value by 1
def update_counts(adjacent, x, y)
  # find all valid neighbor coordinates
  # update those positions in `adjacent` with += 1
end

north = -> (x, y) { [x-1, y] }
south = -> (x, y) { [x+1, y] }
east = -> (x, y) { [x, y+1] }
west = -> (x, y) { [x, y-1] }

CARDINALS = [[north, south], [east, west]]
ORDINALS = CARDINALS[0].product(CARDINALS[1])

def apply(lambda_array, x, y)
  lambda_array.each do |lambda|
    result = lambda.call(x, y)
    x, y = result[0], result[1]
  end
  [x, y]
end

def valid?(x, y, rows, cols)
  (x >= 0 and x < cols) and (y >= 0 and y < rows)
end

solve!("Part 1:", part_1(LINES))

def part_2(input)
end

solve!("Part 2:", part_2(LINES))
