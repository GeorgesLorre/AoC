#ls = File.read("input/inputday1.txt").split('/n').to_s
ls = "122456"


def part1(input)
  marr = input.split('') #convert string input to array
  marr2 = marr.each_cons(2).to_a
  return marr2

end

# def part1(input)
#   return input.each_cons(2)
#             .to_a
#             .select{|a,b| a==b}
#             .map(&:first)
#             .inject(:+)
# end

puts part1(ls)
