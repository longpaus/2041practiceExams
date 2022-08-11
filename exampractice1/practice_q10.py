#!/usr/bin/env python3
import fileinput
from collections import defaultdict
file = []
for line in fileinput.input():
    file.append(line)
fileInfo = [{'sortWord':''.join(sorted(line.strip())),'word':line.strip()} for line in file]
equiGroup = defaultdict(lambda:[])
for info in fileInfo:
    equiGroup[info['sortWord']].append(info['word'])
equiGroup = {k: v for k, v in sorted(equiGroup.items(), key=lambda item: len(item[1]),reverse=True)}
for key in equiGroup:
    print(len(equiGroup[key]),' '.join(equiGroup[key]))
    