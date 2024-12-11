class Grid
  attr_reader :grid, :locs, :count
  attr_writer :count
  def initialize(input)
    @grid = Array.new(input.length, Array.new(input[0].length))
    @locs = Array.new()
    @count = 0
    (0...input.length).each do |row|
      tmp = input[row].chars
      @grid[row] = tmp.flat_map.with_index { |c, col| c == 'X' ? locs.push([row, col]) && [c] : [c] }
    end
  end

  # def search_all(r, c)
  #   total = 0
  #   total +=
  #   return 0
  # end

  def search_N(r, c)
    return false if (r - 3 < 0)
    return @grid[r-1][c] == 'M' && @grid[r-2][c] == 'A' && @grid[r-3][c] == 'S'
  end

  def search_NE(r, c)

  end

  def search_E(r, c)
    return false if ()
  end

  def search_SE(r, c)
  end

  def search_S(r, c)
  end

  def search_SW(r, c)
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
  grid = Grid.new(input)
  grid.locs.each do |loc|
    # grid.count += grid.search_all(loc.first, loc.last)
    grid.count += 1 if grid.search_N(loc.first, loc.last)
    grid.count += 1 if grid.search_NE(loc.first, loc.last)
  end
  grid.count
end

sample_1 = ["MMMSXXMASM",
            "MSAMXMSMSA",
            "AMXSXMAAMM",
            "MSAMASMSMX",
            "XMASAMXAMM",
            "XXAMMXXAMA",
            "SMSMSASXSS",
            "SAXAMASAAA",
            "MAMMMXMMMM",
            "MXMXAXMASX"]

p part_1(sample_1)
# answer_1 = 18

def part_2(input)
end

def main()
  day = "04"
  year = "2024"
  context = Dir.getwd.split('/').last
  context == "aoc" ? file = File.new("#{year}/input/#{day}.txt") : file = File.new("input/#{day}.txt")
  input = file.readlines

  start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  puts "Part 1: #{part_1(input)}"
  # puts "Part 2: #{part_2(input)}"
  end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = end_at - start_at
  puts "Elapsed time: #{elapsed}"
end

# main()
