require "spec_helper"

RSpec.describe "Day 3: Toboggan Trajectory" do
  let(:runner) { Runner.new("2020/03") }
  let(:input) do
    <<~TXT
    ..##.......
    #...#...#..
    .#....#..#.
    ..#.#...#.#
    .#...##..#.
    ..#.##.....
    .#.#.#....#
    .#........#
    #.##...#...
    #...##....#
    .#..#...#.#
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "properly counts tree collisions" do
      expect(solution).to eq(7)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }

    it "determines the number of tree collisions based on slope" do
      expect(solution).to eq(336)
    end
  end
end
