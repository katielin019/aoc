require "spec_helper"

RSpec.describe "Day 2: Password Philosophy" do
  let(:runner) { Runner.new("2020/02") }
  let(:input) do
    <<~TXT
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
    TXT
  end

  describe "(Part 1)" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "determines the number of valid passwords according to instance-based policy" do
      expect(solution).to eq(2)
    end
  end

  describe "(Part 2)" do
    let(:solution) { runner.execute!(input, part: 2) }

    it "determines the number of valid passwords according to the position-based policy" do
      expect(solution).to eq(1)
    end
  end
end
