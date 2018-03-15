ls = File.readlines("input/inputday4.txt")


def part1(input)
  count = 0
  input.each do |l|
    count +=1 if l.split(' ').size == l.split(' ').uniq.size
  end
  count
end

def part2(input)
  count = 0
  input.each do |l|
    n = l.strip.split(' ').map{|x| x.chars.sort.join}
    count +=1 if n.size == n.uniq.size
  end
  count
end
p part2(ls)
