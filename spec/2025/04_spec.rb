require "spec_helper"

RSpec.describe "Day 4: Printing Department" do
  let(:runner) { Runner.new("2025/04") }
  let(:input) do
    <<~TXT
    ..@@.@@@@.
    @@@.@.@.@@
    @@@@@.@.@@
    @.@@@@..@.
    @@.@@@@.@@
    .@@@@@@@.@
    .@.@.@.@@@
    @.@@@.@@@@
    .@@@@@@@@.
    @.@.@@@.@.
    TXT
  end

  describe "PART_1" do
    let(:solution) { runner.execute!(input, part: 1) }

    it "does something" do
      expect(solution).to eq(13)
    end
  end

  # describe "PART_2" do
  #   let(:solution) { runner.execute!(input, part: 2) }

  #   it "does something" do
  #     expect(solution).to eq(REPLACE_WITH_ANSWER)
  #   end
  # end
end
