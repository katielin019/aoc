require "spec_helper"

RSpec.describe "Day 4: Ceres Search" do
  let(:runner) { Runner.new("2024/04") }
  let(:input) do
    <<~TXT
      MMMSXXMASM
      MSAMXMSMSA
      AMXSXMAAMM
      MSAMASMSMX
      XMASAMXAMM
      XXAMMXXAMA
      SMSMSASXSS
      SAXAMASAAA
      MAMMMXMMMM
      MXMXAXMASX
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "searches for all occurances of `XMAS`" do
      expect(solution).to eq(18)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }

    it "searches for all X-MAS appearances" do
      expect(solution).to eq(9)
    end
  end
end
