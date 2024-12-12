class Grid
  attr_reader :grid, :locs, :count, :rows, :cols
  attr_writer :count
  def initialize(input, target)
    @rows = input.length
    @cols = input[0].length
    @grid = Array.new(@rows, Array.new(@cols))
    @locs = Array.new()
    @count = 0
    (0...input.length).each do |row|
      tmp = input[row].chars
      @grid[row] = tmp.flat_map.with_index { |c, col| c == target ? locs.push([row, col]) && [c] : [c] }
    end
  end

  def check_backslash(r, c)
    upper = @grid[r-1][c-1]
    lower = @grid[r+1][c+1]
    return (upper == 'M' && lower == 'S') || (upper == 'S' && lower == 'M')
  end

  def check_fwdslash(r, c)
    upper = @grid[r-1][c+1]
    lower = @grid[r+1][c-1]
    return (upper == 'M' && lower == 'S') || (upper == 'S' && lower == 'M')
  end

  def inbounds(r, c)
    return false if (r - 1 < 0) || (r + 1 >= @rows)
    return false if (c - 1 < 0) || (c + 1 >= @cols)
    return true
  end

  def search_N(r, c)
    return false if (r - 3 < 0)
    return @grid[r-1][c] == 'M' && @grid[r-2][c] == 'A' && @grid[r-3][c] == 'S'
  end

  def search_NE(r, c)
    return false if (r - 3 < 0 || c + 3 >= @cols)
    return @grid[r-1][c+1] == 'M' && @grid[r-2][c+2] == 'A' && @grid[r-3][c+3] == 'S'
  end

  def search_E(r, c)
    return false if (c + 3 >= @cols)
    return @grid[r][c+1] == 'M' && @grid[r][c+2] == 'A' && @grid[r][c+3] == 'S'
  end

  def search_SE(r, c)
    return false if (r + 3 >= @rows || c + 3 >= @cols)
    return @grid[r+1][c+1] == 'M' && @grid[r+2][c+2] == 'A' && @grid[r+3][c+3] == 'S'
  end

  def search_S(r, c)
    return false if (r + 3 >= @rows)
    return @grid[r+1][c] == 'M' && @grid[r+2][c] == 'A' && @grid[r+3][c] == 'S'
  end

  def search_SW(r, c)
    return false if (r + 3 >= @rows || c - 3 < 0)
    return @grid[r+1][c-1] == 'M' && @grid[r+2][c-2] == 'A' && @grid[r+3][c-3] == 'S'
  end

  def search_W(r, c)
    return false if (c - 3 < 0)
    return @grid[r][c-1] == 'M' && @grid[r][c-2] == 'A' && @grid[r][c-3] == 'S'
  end

  def search_NW(r, c)
    return false if (c - 3 < 0) || (r - 3 < 0)
    return @grid[r-1][c-1] == 'M' && @grid[r-2][c-2] == 'A' && @grid[r-3][c-3] == 'S'
  end
end

def part_1(input)
  grid = Grid.new(input, 'X')
  grid.locs.each do |loc|
    row = loc.first
    col = loc.last
    grid.count += 1 if grid.search_N(row, col)
    grid.count += 1 if grid.search_NE(row, col)
    grid.count += 1 if grid.search_E(row, col)
    grid.count += 1 if grid.search_SE(row, col)
    grid.count += 1 if grid.search_S(row, col)
    grid.count += 1 if grid.search_SW(row, col)
    grid.count += 1 if grid.search_W(row, col)
    grid.count += 1 if grid.search_NW(row, col)
  end
  grid.count
end

def part_2(input)
  grid = Grid.new(input, 'A')
  grid.locs.each do |loc|
    row = loc.first
    col = loc.last
    grid.count += 1 if grid.inbounds(row, col) && grid.check_backslash(row, col) && grid.check_fwdslash(row, col)
  end
  grid.count
end

solve!(part_1(INPUT.split("\n")))
solve!(part_2(INPUT.split("\n")))
