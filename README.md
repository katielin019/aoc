# aoc

My solutions repo for [Advent of Code](https://adventofcode.com/). I solve for fun (i.e. usually not as soon as the puzzles are released). I try not to brute-force my solutions, but I'm also not trying to optimize the living hell out of them either. Sometimes I'll write a working solution and move on from it, then return to it later to implement a better approach.

As of December 2024, all of my solutions are written in Ruby. I also make use of [aoc-cli](https://github.com/scarvalhojr/aoc-cli) with a default session cookie file path (`~/.adventofcode.session`).

## `aoc-cli` quickref
#### Download puzzle input
```
aoc do -I -i <FILEPATH> -d <DAY> -y <YEAR>
```

#### Read the puzzle write-up for DAY in YEAR
```
aoc re -d <DAY> -y <YEAR>
```

#### Submit your answer for part 1
```
aoc sub 1 <ANSWER> -d <DAY> -y <YEAR>
```

#### View progress calendar for YEAR
```
aoc cal -y <YEAR>
```