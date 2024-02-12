#!/usr/bin/python3
import os
import sys

path = 'output_dir'

# Check whether the specified path exists or not
isExist = os.path.exists(path)

if not isExist:
  # Create a new directory because it does not exist 
  os.makedirs(path)
  print("The out directory is created!")

# open file named after nodename where this batch process is running
file = open(path+'/'+os.uname()[1],'a')

# write nodename to file
file.write('{} {} {} {}\n'.format(sys.argv[0], sys.argv[1], sys.argv[2], os.uname()))
file.close()

# print to console out
print(os.uname()[1] +' processed...')

