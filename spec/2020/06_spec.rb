require "spec_helper"

RSpec.describe "Day 6: Challenge Title" do
  let(:runner) { Runner.new("2020/06") }
  let(:input) do
    <<~TXT
    TXT
  end

  describe "Part One" do
    let(:solution) { runner.execute!(input, part: 1) }
  end

  describe "Part Two" do
    let(:solution) { runner.execute!(input, part: 2) }
  end
end