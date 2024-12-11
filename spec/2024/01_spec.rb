require "spec_helper"

RSpec.describe "Day 1: Historian Hysteria" do
  let(:runner) { Runner.new("2024/01") }
  let(:input) do
    <<~TXT
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "sorts the lists and pairs the numbers to calculate and total their distances" do
      expect(solution).to eq(11)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }

    it "calculates the similarity score between the two lists" do
      expect(solution).to eq(31)
    end
  end
end
