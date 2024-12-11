def part_1(input)
  grid = Array.new(input.length, Array.new(input[0].length))
  locs = []
  (0...input.length).each do |row|
    tmp = input[row].chars
    # ["A", "B", "C", "D", "E"]
    grid[row] = tmp.flat_map.with_index { |ch, col| ch == 'X' ?  locs.push([row, col]) && [ch] : [ch]}
  end
  p grid
  locs
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
