ls = File.read("input/inputday1.txt").delete("\n").split('').to_a
#ls = "122456".chars.to_a


def part1(input)
  input << input.first
  return input.each_cons(2).to_a
              .select{|a,b| a==b}
              .map{|a,b| a.to_i}
              .reduce(:+)
end

def part2(input)
  size = input.size
  return input.select
              .each_with_index { |a, i| input[(i + size / 2) % size] == a }
              .map(&:to_i)
              .inject(:+)
end


p part1(ls)
