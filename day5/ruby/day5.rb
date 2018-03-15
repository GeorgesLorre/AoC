ls = File.read('input/inputday5.txt')

def part1(input)
  pos = 0
  count = 0
  while pos < input.size
    jump = input[pos]
    input[pos] += 1
    pos += jump
    count += 1
  end
  count
end

def part2(input)
  pos = 0
  count = 0
  while pos < input.size
    jump = input[pos]
    jump > 2 ? input[pos] -= 1 : input[pos] += 1
    pos += jump
    count += 1
  end
  count
end


def formatinput(input)
  input.split(' ').map{|x| x.strip.to_i}
end


p part1(formatinput(ls))
p part2(formatinput(ls))
