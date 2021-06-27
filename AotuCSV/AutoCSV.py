import csv
import numpy as np


# 二維表格
table = []
Input = []
Data = []

PATH ="/home/ailab/Downloads/Euclidean_distance/Diversity/Experiment/"


for i in range(30):
    File=str(i+1)+'_PPSO.txt'
    if i==1:
        continue
    with open(PATH+File) as f:
        temp =[]
        for line in f.readlines():
            line=line.strip('\n')
            s = line.split(' ')
            # print(s)
            s[0]=float(s[0])
            temp.append(s)
        
    Data.append(temp)

# print(Data)
with open('output.csv', 'w', newline='') as csvfile:
  writer = csv.writer(csvfile)

#   # 寫入二維表格
  writer.writerows(Data)