import numpy as np
from sklearn.decomposition import PCA  
from sklearn.decomposition import KernelPCA
import sys
import os


Data = []
Objective = []
Testing = []
k= -1
Input = []
for i in sys.argv:
    Input.append(i)





with open(Input[1]) as f:
    for line in f.readlines():
        line=line.strip('\n')
        s = line.split(' ')
        Data.append(s)
        k = k + 1
        print(k)
Data.pop()

with open(Input[2]) as f:
    for line in f.readlines():
        line=line.strip('\n')
        s = line.split(' ')
        Data.append(s)

for i in range(len(Data)):
    for j in range(len(Data[i])):
        Data[i][j] = float(Data[i][j])
        if(j==(len(Data[i])-1)):
            Objective.append(Data[i][j])
            Data[i].pop()
            
print(len(Data))



##KernelPCA
# for i in range((len(Data))):
#         Testing.append([i,i+1])

# kpca = KernelPCA(n_components=2,fit_inverse_transform=True,kernel='linear',)
# newX = kpca.fit_transform(Data)
# invX = kpca.inverse_transform(Testing)


pca = PCA(n_components=2)
newX = pca.fit_transform(Data)
invX = pca.inverse_transform(newX)  #轉回來
# print(pca.explained_variance_ratio_)
# print(newX)
# print(invX)

path="./PCA/"+Input[4]
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
    if(i==k-1):
        f.close()
        f = open(path+'/'+Input[3]+"_Verify.txt", 'w')


