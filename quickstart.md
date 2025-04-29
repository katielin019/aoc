# quickstart

## what is this
I do a lot of intermittent solving for Advent of Code. I started using this configuration in December 2024, but I modified someone else's, which means that I'm not as familiar with the implementation details as I would be if I built it from scratch.

So, I sometimes forget which commands to run and what files I should navigate to as my entry points.

## example: 2020, day 3
1. `$ bin/start 2020/03`
2. Add example input from [write up](https://adventofcode.com/2020/day/3) in spec/2020/03_spec.rb
3. Add example input solution in spec/2020/03_spec.rb to test against code
4. Write solution in lib/2020/03.rb
5. `$ rspec spec/2020/03_spec.rb`
6. `$ bin/run 2020/03`
7. Add part 2 example input solution in spec/2020/03_spec.rb
8. Repeat steps 5 and 6