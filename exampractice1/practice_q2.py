#!/usr/bin/env python3
import fileinput
numbers = [line.split("|")[3].split('/')[0] for line in fileinput.input()]
print(numbers.count('3711'))