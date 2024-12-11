require "spec_helper"

RSpec.describe "Day 4: Ceres Search" do
  let(:runner) { Runner.new("2024/04") }
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
