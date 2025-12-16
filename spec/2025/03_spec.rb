require "spec_helper"

RSpec.describe "Day 3: Lobby" do
  let(:runner) { Runner.new("2025/03") }
  let(:input) do
    <<~TXT
    987654321111111
    811111111111119
    234234234234278
    818181911112111
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "sums the max joltage from each power bank" do
      expect(solution).to eq(357)
    end
  end

  # describe "(Part 2)" do
  #   let(:solution) { runner.execute!(input, part: 2) }

  #   it "does something" do
  #     expect(solution).to eq(REPLACE_WITH_ANSWER)
  #   end
  # end
end
