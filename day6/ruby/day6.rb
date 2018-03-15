ls = File.read('input/inputday5.txt')

def part1(input)
  max = input.max
  maxi = input.index(max)

end



def formatinput(input)
  input.split(' ').map{|x| x.strip.to_i}
end

p part1(formatinput(ls))
