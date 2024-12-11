require "spec_helper"

RSpec.describe "Day 2: Red-Nosed Reports" do
  let(:runner) { Runner.new("2024/02") }
  let(:input) do
    <<~TXT
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }
  end
end
