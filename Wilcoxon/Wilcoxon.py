from scipy.stats import ranksums
from scipy.stats import wilcoxon
import numpy as np
import sys


Input = []
for i in sys.argv:
    Input.append(i)


def readfile(openfile):
    with open(openfile) as f:
        temp =[]
        for line in f.readlines():
            line=line.strip('\n')
            s = line.split(' ')
            for i in range(len(s)):
                if(s[i]!=''):
                    temp.append(float(s[i]))

    return np.array(temp)




First = readfile(Input[1])
Second = readfile(Input[2])


# ranksums(First, Second)
print(ranksums(First,Second))
print(wilcoxon(First,Second))
