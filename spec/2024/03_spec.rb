require "spec_helper"

RSpec.describe "Day 3: Mull It Over" do
  let(:runner) { Runner.new("2024/03") }

  describe "(Part 1)" do
    let(:input) { "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))" }
    let(:solution) { runner.execute!(input, part: 1) }

    it "extracts all valid `mul` commands, executes, and sums the total" do
      expect(solution).to eq(161)
    end
  end

  describe "(Part 2)" do
    let(:input) { "xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))" }
    let(:solution) { runner.execute!(input, part: 2) }

    it "only operates on enabled `mul` commands determined by keyword toggling" do
      expect(solution).to eq(48)
    end
  end
end
