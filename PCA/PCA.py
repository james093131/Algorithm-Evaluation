import numpy as np
from scipy.sparse import data
from sklearn.decomposition import PCA  
from sklearn.decomposition import KernelPCA
import sys
import os


Data = []
Objective = []
Testing = []
Input = []
for i in sys.argv:
    Input.append(i)


def InputData():
    temp =-1
    with open(Input[1]) as f:
        for line in f.readlines():
            line=line.strip('\n')
            s = line.split(' ')
            temp_L =[]
            for i in range(len(s)):
                if(s[i]!=''):
                    temp_L.append(float(s[i]))
            Data.append(temp_L)
            temp = temp + 1

    with open(Input[2]) as f:
        for line in f.readlines():
            line=line.strip('\n')
            s = line.split(' ')
            temp_L =[]
            for i in range(len(s)):
                if(s[i]!=''):
                    temp_L.append(float(s[i]))
            Data.append(temp_L)

    for i in range(len(Data)):
        for j in range(len(Data[i])):
            Data[i][j] = float(Data[i][j])
            if(j==(len(Data[i])-1)):
                Objective.append(Data[i][j])
                Data[i].pop()
    return temp
def OutputData(newX,k):

    path="./"+Input[4]
    if not os.path.isdir(path):
        os.mkdir(path)

    f = open(path+'/'+Input[3]+"_point.txt", 'w')
    for i in range(len(newX)):
        for j in range(len(newX[i])):
            WORD = str(newX[i][j]) + ' '
            f.write(WORD)
        WORD = str(Objective[i]) + ' '
        f.write(WORD)
        f.write("\n")
        if(i==k):
            f.close()
            f = open(path+'/'+Input[3]+"_Verify.txt", 'w')

                
k=InputData()
pca = PCA(n_components=2)
newX = pca.fit_transform(Data)
OutputData(newX,k)
# invX = pca.inverse_transform(newX)  #轉回來
# print(newX)
# print(invX)



