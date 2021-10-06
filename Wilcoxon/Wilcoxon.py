from scipy.stats import wilcoxon
import numpy as np
import sys


Input = []
for i in sys.argv:
    Input.append(i)


def median_bigger_smaller(arr, median):
    det = [0, 0]
    for i in range(len(arr)):
        if(arr[i] > median):
            det[0] = det[0]+1
        elif(arr[i] < median):
            det[1] = det[1]+1
    return det


def readfile(openfile):
    with open(openfile) as f:
        temp = []
        for line in f.readlines():
            line = line.strip('\n')
            s = line.split(' ')
            for i in range(len(s)):
                if(s[i] != ''):
                    temp.append(float(s[i]))

    return temp


First = readfile(Input[1])
Second = readfile(Input[2])
for i in range(len(First)):
    if(First[i] < 1e-8):
        First[i] = 0.0
    if(Second[i] < 1e-8):
        Second[i] = 0.0

w, p = wilcoxon(First, Second, alternative='two-sided',
                mode='auto', zero_method='zsplit')
if(p <= 0.05):
    ALL = First+Second
    average = np.average(ALL)
    F = median_bigger_smaller(First, average)
    S = median_bigger_smaller(Second, average)
    if(F[0] > S[0]):
        print(2)
    else:
        print(1)

else:
    print(0)
