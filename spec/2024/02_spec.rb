require "spec_helper"

RSpec.describe "Day 2: Red-Nosed Reports" do
  let(:runner) { Runner.new("2024/02") }
  let(:input) do
    <<~TXT
      7 6 4 2 1
      1 2 7 8 9
      9 7 6 2 1
      1 3 2 4 5
      8 6 4 4 1
      1 3 6 7 9
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }
  end
end