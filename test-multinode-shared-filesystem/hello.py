#!/usr/bin/python3
import os

path = 'output_dir'

# Check whether the specified path exists or not
isExist = os.path.exists(path)

if not isExist:
  # Create a new directory because it does not exist 
  os.makedirs(path)
  print("The out directory is created!")


file = open(path+'/'+os.uname()[1],'a')

file.write('Hello World! {}'.format(os.uname()))
file.close()

print(os.uname()[1] +' processed...')

