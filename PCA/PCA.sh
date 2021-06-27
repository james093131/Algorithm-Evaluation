
# for example    
# python3 PCA.py  input1 input2  OTUPUT_name OUTPUT_DIR



begin=1
end=10
for ((i=$begin; i<=$end; i+=1))
do  
   python3 PCA.py  "./Sample_CEC_${i}_basic.txt" "./testing.txt"  CEC21_${i} CEC21

done

