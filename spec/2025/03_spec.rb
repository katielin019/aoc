require "spec_helper"

RSpec.describe "Day 3: REPLACE WITH TITLE" do
  let(:runner) { Runner.new("2025/03") }
  let(:input) do
    <<~TXT
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "does something" do
      expect(solution).to eq(REPLACE WITH ANSWER)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }
  end
end