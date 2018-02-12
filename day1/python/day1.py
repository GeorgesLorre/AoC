nls= list(map(int, open('input4.txt', 'r').read().strip('\n')))
#nls = [1,2,1,2]
size = len(nls)
nls.extend(nls)

print nls
print size
def part1 (inputlist):
  for i in rang



def part2 (inputlist):
  sm = 0
  size = len(inputlist)
  inputlist.extend(inputlist)
  for i in range(0, size):
    if inputlist[i] == inputlist[i+(size/2)]:
      sm += inputlist[i]
    return sm
