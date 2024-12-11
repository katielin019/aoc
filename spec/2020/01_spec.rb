require "spec_helper"

RSpec.describe "Day 1: Challenge Title" do
  let(:runner) { Runner.new("2020/01") }
  let(:input) do
    <<~TXT
      1721
      979
      366
      299
      675
      1456
    TXT
  end

  describe "Part One" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "finds the two entries that sum to 2020 and returns their product" do
      expect(solution).to eq(514_579)
    end
  end

  describe "Part Two" do
    let(:solution) { runner.execute!(input, part: 2) }

    it "finds the three entries that sum to 2020 and returns their product" do
      expect(solution).to eq(241_861_950)
    end
  end
end
