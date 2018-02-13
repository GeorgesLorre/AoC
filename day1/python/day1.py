nls= list(map(int, open('input/inputday1.txt', 'r').read().strip('\n')))
#nls = [1,2,1,3,1,4,1,5]
size = len(nls)

def part1 (inputlist):
  sm = 0
  inputlist.append(inputlist[0])
  for i in range(0, size):
    if inputlist[i] == inputlist[i+1]:
      sm += inputlist[i]
  return sm


def part2 (inputlist):
  sm = 0
  inputlist.extend(inputlist)
  for i in range(0, size):
    if inputlist[i] == inputlist[i+(size/2)]:
      sm += inputlist[i]
  return sm

#print part1(nls)
#print part2(nls)
