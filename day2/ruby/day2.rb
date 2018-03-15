ls = File.read("input/inputday2.txt")


def part1 (input)
  sm = 0
  input.split("\n").map {|row| row.split(" ").map(&:to_i).sort}
                   .map {|row| row.last-row.first}
                   .reduce(:+)
end

def part2 (input)
  puts input.split("\n")
  .map { |row| row.split(" ").map(&:to_i).sort }
  .map { |row| row.combination(2) }
  .map { |row| row.find { |a, b| b % a == 0 } }
  .map { |a, b| b / a }
  .inject(:+)
end
p part2(ls)
