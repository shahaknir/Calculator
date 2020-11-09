
#define e 2.7183

double Power(double x, int y){
    if(y == 0) return 1;

    double temp = x;
    int n = y;
    if(y < 0) n = -y;
    
    for(int j = 1; j < n ; j++)
    {
        temp *= x;
    }

    if(y < 0) return 1/temp;

    return temp;
}


double Exponent(int x){
    return Power(e,x);
}







