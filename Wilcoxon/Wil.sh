

# python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/10D/1_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/10D/1_0_Run_Classify.txt >> LSHADE_17_10.txt
# python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/30D/1_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/30D/1_0_Run_Classify.txt >> LSHADE_17_30.txt
# python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/50D/1_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/50D/1_0_Run_Classify.txt >> LSHADE_17_50.txt
# python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/100D/1_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/100D/1_0_Run_Classify.txt >> LSHADE_17_100.txt
# i=3
# for (( i; i<31; i=i+1 ))
# do  
#         echo $i 
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/10D/${i}_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/10D/${i}_0_Run_Classify.txt >> LSHADE_17_10.txt
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/30D/${i}_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/30D/${i}_0_Run_Classify.txt >> LSHADE_17_30.txt
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/50D/${i}_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/50D/${i}_0_Run_Classify.txt >> LSHADE_17_50.txt
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/17_RUN_RESULT/100D/${i}_0_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_17/100D/${i}_0_Run_Classify.txt >> LSHADE_17_100.txt
  
# done



# python3 classfication.py LSHADE_17_10.txt >> LSHADE_17_10.txt
# python3 classfication.py LSHADE_17_30.txt >> LSHADE_17_30.txt
# python3 classfication.py LSHADE_17_50.txt >> LSHADE_17_50.txt
# python3 classfication.py LSHADE_17_100.txt >> LSHADE_17_100.txt


# # i=1
# for (( i; i<14; i=i+1 ))
# do  
#         echo $i 
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/Fun_RUN_RESULT/10D/${i}_-1_Run_Classify.txt LSHADE_fun/10D/${i}_-1_Run_Classify.txt >> LSHADE_fun_10.txt
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/Fun_RUN_RESULT/30D/${i}_-1_Run_Classify.txt LSHADE_fun/30D/${i}_-1_Run_Classify.txt >> LSHADE_fun_30.txt
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/Fun_RUN_RESULT/50D/${i}_-1_Run_Classify.txt LSHADE_fun/50D/${i}_-1_Run_Classify.txt >> LSHADE_fun_50.txt
#         python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/Fun_RUN_RESULT/100D/${i}_-1_Run_Classify.txt LSHADE_fun/100D/${i}_-1_Run_Classify.txt >> LSHADE_fun_100.txt
# done



# python3 classfication.py LSHADE_fun_10.txt >> LSHADE_fun_10.txt
# python3 classfication.py LSHADE_fun_30.txt >> LSHADE_fun_30.txt
# python3 classfication.py LSHADE_fun_50.txt >> LSHADE_fun_50.txt
# python3 classfication.py LSHADE_fun_100.txt >> LSHADE_fun_100.txt



# cec21

j=1
i=1 
for (( i; i<9; i=i+1 ))
do   
     for (( j; j<11; j=j+1 ))
     do
          echo $j $i 
        python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/21_RUN_RESULT/10D/${j}_${i}_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_21/10D/${j}_${i}_Run_Classify.txt >> LSHADE_21_10.txt
        python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/21_RUN_RESULT/20D/${j}_${i}_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_21/20D/${j}_${i}_Run_Classify.txt >> LSHADE_21_20.txt
        # python3 Wilcoxon.py /home/ailab/Downloads/CEC_2021/SEEN_NEW/21_RUN_RESULT/10D/${j}_${i}_Run_Classify.txt /home/ailab/Downloads/Algorithm-Evaluation/Wilcoxon/LSHADE_21/10D/${j}_${i}_Run_Classify.txt >> LSHADE_21_10_${i}.txt

     done
     j=1
done

        python3 classfication.py LSHADE_21_10.txt >> LSHADE_21_10.txt
        python3 classfication.py LSHADE_21_20.txt >> LSHADE_21_20.txt

# i=1 
# for (( i; i<9; i=i+1 ))
# do   
#         python3 classfication.py LSHADE_21_10_${i}.txt >> LSHADE_21_10_${i}.txt
#         python3 classfication.py LSHADE_21_20_${i}.txt >> LSHADE_21_20_${i}.txt
# done