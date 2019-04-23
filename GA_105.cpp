#include<bits/stdc++.h>
using namespace std;

int v[4][6];
int d[4]={0};
int f[4]={0}, c[4]={0}, b[2]={0};
int temp[2][6];
int plc, plc2, plc3, k, prob;


void initialize()
{
    srand(time(NULL));
    for(int i=0; i<4; i++)
    {
    for(int j=0; j<6; j++)
    {
        v[i][j]=rand()%2;
    }
    }
}

void fitness()
{
    d[4]=0;
    f[4]=0;
    for(int i=0; i<4; i++)
    {
    for(int j=1; j<6; j++)
    {
        d[i]=d[i]+(pow(2,5-j)*v[i][j]);
    }
    if(v[i][0]==1) d[i]=d[i]*-1;
    f[i]=-(d[i]*d[i])+5;
    }
}

void selection()
{
    for(int i=0; i<4; i++)
    {
        c[i]=f[i];
    }
    sort(c, c+4);
    for(int i=0; i<4; i++)
    {
        if(c[2]==f[i]) b[0]=i;
        if(c[3]==f[i]) b[1]=i;
    }
}

void crossover()
{
    k=0;
    for(int i=0; i<2; i++)
    {
    for(int j=0; j<6; j++)
    {
        temp[i][j]=v[b[i]][j];
    }
    }
    plc=rand()%5;
    //cout << plc << endl;
    for(int i=plc; i<6; i++)
    {
        swap(temp[0][i], temp[1][i]);
    }

    for(int i=0; i<4; i++)
    {
        if(i!=b[0] && i!=b[1])
        {
                for(int j=0; j<6; j++)
                {
                    v[i][j]=temp[i][j];
                }
                k++;
            }
        }
    }

void mutaion()
{
    srand(time(NULL));
    prob=rand()%50;
    if(prob==20){
    srand(time(NULL));
    plc2=rand()%3;
    plc3=rand()%5;
    v[plc2][plc3]=1-v[plc2][plc3];
    }
}

int main()
{
for(int x=0; x<1000; x++){
cout << endl << "Iteration : " << x+1 << " : " << endl;
initialize();
cout << "Chromosomes : " << endl;
for(int i=0; i<4; i++)
    {
    for(int j=0; j<6; j++)
    {
        cout << v[i][j] << " ";
    }
    cout << endl;
    }
fitness();
selection();
cout << "Decimals : " << endl;
for(int i=0; i<4; i++)
    {
        cout << c[i] << " ";
    }
cout << endl;
cout << "Fitness Values : " << endl;
//for(int i=0; i<4; i++)
//    {
//        cout << f[i] << " ";
//    }
//    cout << endl;
//for(int i=0; i<2; i++)
//    {
//        cout << b[i] << " ";
//    }
//    cout << endl;
crossover();
//    for(int i=0; i<4; i++)
//    {
//    for(int j=0; j<6; j++)
//    {
//        cout << v[i][j] << " ";
//    }
//    cout << endl;
//    }
mutaion();
fitness();
for(int i=0; i<4; i++)
    {
        cout << f[i] << " ";
    }
    cout << endl;
sort(f, f+4);
cout << "Optimal Value : " << f[3] << endl;

}
}

