#include "normal.hpp"


int main(int argc,const char *argv[])
{
    // int NODE = atoi(argv[1]);
    int DIM = atoi(argv[1]);  
    int F = atoi(argv[2]);
    const char *DIR = argv[3];
    const char *NAME = argv[4];
    int iSTART = atoi(argv[5]);
    int iEND = atoi(argv[6]);
    int iPLUS= atoi(argv[7]);
    
    Diversity D;
    D.ALL(DIR,NAME,DIM,F,iSTART,iEND,iPLUS);
        
    
}

