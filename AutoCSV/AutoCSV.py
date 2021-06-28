import csv
import numpy as np


# 二維表格
table = []
Input = []
Data = []

PATH ="/home/ailab/Downloads/Euclidean_distance/Wilcoxon/Wil/50D/"
# Choose the folder of input file

def Readfile(read):
  with open(read) as f:
      temp =[]
      for line in f.readlines():
          line=line.strip('\n')
          s = line.split(' ')
          for i in range(len(s)):
            if(s[i]!=''):
              temp.append(float(s[i]))
  return temp

for i in range(12):
    File='LSHADE_'+str(i+1)+'_Run_Classify.txt'#the name of the input files        
    Data.append(Readfile(PATH+File))

# print(Data)
with open('output.csv', 'w', newline='') as csvfile:
  writer = csv.writer(csvfile)
  # 寫入二維表格
  writer.writerows(Data)