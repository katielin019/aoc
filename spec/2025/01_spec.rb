require "spec_helper"

RSpec.describe "Day 1: Secret Entrance" do
  let(:runner) { Runner.new("2025/01") }
  let(:input) do
    <<~TXT
    L68
    L30
    R48
    L5
    R60
    L55
    L1
    L99
    R14
    L82
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "analyzes the rotations in the document" do
      expect(solution).to eq(3)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }

    it "counts the number of times the dial points at 0" do
      expect(solution).to eq(6)
    end
  end
end
