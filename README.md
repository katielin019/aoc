# aoc

Uses [aoc-cli](https://github.com/scarvalhojr/aoc-cli) with default session cookie file path (`~/.adventofcode.session`)

## events
#### 2020
Solved in Ruby

#### 2024
Solved in Swift. Looked at [swiftlang/swift-aoc-starter-example](https://github.com/swiftlang/swift-aoc-starter-example) but seemed like too much of a hassle.

## useful `aoc-cli` commands
#### Download the unique puzzle input for DAY in YEAR to PATH
```
aoc do -d <DAY> -y <YEAR> -I -i <PATH>
```

#### Read the puzzle write-up for DAY in YEAR
```
aoc re -d <DAY> -y <YEAR>
```

#### Submit part 1 puzzle answer for DAY in YEAR
```
aoc sub -d <DAY> -y <YEAR> 1 <ANSWER>
```

#### View progress calendar for YEAR
```
aoc cal -y <YEAR>
```