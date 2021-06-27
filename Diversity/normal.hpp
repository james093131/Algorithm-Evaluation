#include<stdio.h>
#include<fstream>
#include<iostream>
#include<sstream>
#include<stdlib.h>
#include <string.h>
#include<time.h>
#include<vector>
#include <algorithm>
#include<math.h>
#include<float.h>
#include <sys/stat.h>

using namespace std;

typedef vector<char> c1d;
typedef vector<c1d> c2d;
typedef vector<c2d> c3d;
typedef vector<c3d> c4d;
typedef vector<int> i1d;
typedef vector<i1d> i2d;
typedef vector<i2d> i3d;
typedef vector<i3d> i4d;
typedef vector<double>d1d;
typedef vector<d1d> d2d;
typedef vector<d2d> d3d;
typedef vector<d3d> d4d;
class Diversity{
    public :
     void ALL(const char* DIR,const char *NAME,int DIM,int F,int istart,int iend,int iplus)
        {
            double START,END;
            START = clock();
            fstream file;
            string Z = DIR;
            string Z1 = NAME;
            for(int i=istart;i<=iend;i+=iplus)
            {
                clear();
                string A = Z+"/"+to_string(i)+Z1+".txt";
                read(A,DIM);
                DATA = MAKE(READ,DIM,NODE);
                GET_RANGE(F);
                CAL_DIVERSITY(DIM);
                // cout<<NODE<<' '<<Diversity_Value<<endl;
                cout<<Diversity_Value<<endl;
            }
        }
    private :
        double max,min;
        int NODE;
        double Diversity_Value;
        d1d READ ;
        d2d DATA;
        d1d DIM_MEAN;
    private :
        void clear()
            {
                READ.clear();
                READ.swap((READ));

                DATA.clear();
                DATA.swap((DATA));
                
        
                DIM_MEAN.clear();
                DIM_MEAN.swap(DIM_MEAN);


            }
      void read(string A,int DIM){//讀檔

                    fstream file;
                    file.open(A,ios::in);
                    NODE = 0;
                    while(file)
                    {
                        double K;
                        file>> K;
                        READ.push_back(K);
                    }
                    NODE = READ.size()/(DIM);
        }
        d2d MAKE(d1d READ ,int DIM,int NODE){//讀檔

            int ind = 0;
            d2d OUT(NODE,d1d((DIM),0));
            for(int i=0;i<OUT.size();i++)
            {
                for(int j=0;j<OUT[i].size();j++)
                {
                    OUT[i][j] = READ[ind];
                    ind++;
                }
            }
            return OUT;
        }
        void print(i2d X)
        {
            for(int i=0;i<X.size();i++)
            {
                for(int j=0;j<X[i].size();j++)
                {
                    cout<<X[i][j]<<' ';
                }
                cout<<endl;
            }
        }
        void print(d2d X)
        {
            for(int i=0;i<X.size();i++)
            {
                for(int j=0;j<X[i].size();j++)
                {
                    cout<<X[i][j]<<' ';
                }
                cout<<endl;
            }
        }  
        void CAL_Mean(int DIM)
        {
            DIM_MEAN.resize(DIM,0);
            for(int i=0;i<NODE;i++)
            {
                for(int j=0;j<DIM;j++)
                {
                   
                    DATA[i][j] = (DATA[i][j]-min)/(max-min);
                    DIM_MEAN[j] += DATA[i][j];
                }
            }

            for(int i=0;i<DIM;i++)
            {
                 DIM_MEAN[i] /= NODE;
            }
        }
        void CAL_DIVERSITY(int DIM)
        {
            CAL_Mean(DIM);
            Diversity_Value = 0;
            for(int i=0;i<NODE;i++)
            {
                double temp = 0;
                for(int j= 0;j<DIM;j++)
                {
                
                    temp += pow(DATA[i][j] - DIM_MEAN[j],2);
                 
                }
                Diversity_Value += sqrt(temp/DIM);
            }
            Diversity_Value /= NODE;
        }
        void GET_RANGE(int F)
        {
            max = 100 ;
            min = -100;
        }
};