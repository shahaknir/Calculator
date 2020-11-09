#include "myMath.h"
#include <stdio.h>

int main(){
    double x;
    printf("Please insert a double: \n");
    scanf("%lf",&x);


    //func1 = e^x + x^3 - 2
    double f1;
    f1 = Exponent(x);
    f1 = add(f1, Power(x,3));
    f1 = sub(f1, 2);

    printf("func1: e^x + x^3 - 2 = %.4f \n",f1);


    //func2 = 3*x + 2*(x^2)
    double f2;
    f2 = mul(x,3);
    f2 = add(f2, mul(Power(x,2),2));

    printf("func2: 3*x + 2*(x^2) = %.4f \n",f2);


    //func3 = (4*x^3)/5 - 2*x
    double f3;
    f3 = mul(Power(x,3) ,4);
    f3 = div(f3,5);
    f3 = sub(f3,mul(x,2));

    printf("func3: (4*x^3)/5 - 2*x = %.4f \n",f3);
    return(0);
}