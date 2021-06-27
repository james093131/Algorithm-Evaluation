

# for example    
# ./DIV  DIM Function_number Input_Directory Input_name start_number end_number plus_number

 j=3
   for (( j; j<31; j=j+1 ))
   do
        echo $j
        /home/ailab/Downloads/Euclidean_distance/Diversity/DIV   100 $j /home/ailab/Downloads/Euclidean_distance/PLT_AND_TXT/$j  _Record_Classify 1 13 1 >> /home/ailab/Downloads/Euclidean_distance/Diversity/Experiment/${j}_PPSO.txt
    done

