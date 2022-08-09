#!/usr/bin/env python3
import fileinput
for line in fileinput.input():
    lineArr = line.split('|')
    arrangedName = ' '.join(lineArr[2].strip().split(',')[::-1]).ljust(32)
    lineArr[2] = arrangedName
    print('|'.join(lineArr),end='')
         