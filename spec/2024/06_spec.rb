require "spec_helper"

RSpec.describe "Day 6: Guard Gallivant" do
  let(:runner) { Runner.new("2024/06") }
  let(:input) do
    <<~TXT
    ....#.....
    .........#
    ..........
    ..#.......
    .......#..
    ..........
    .#..^.....
    ........#.
    #.........
    ......#...
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "counts the distinct positions the guard will visit" do
      expect(solution).to eq(41)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }
  end
end
