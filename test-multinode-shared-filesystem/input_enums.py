#!/usr/bin/python3
path = 'input_enums.txt'

file = open(path,'w')

for scalars in ['11', '22', '33']:
   for learnings in ['A', 'B', 'C']:
      file.write('{},{}\n'.format(scalars, learnings))    

file.close()  
