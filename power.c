
#define e 2.71828182846

double Pow(double x,int y){
	int i;
	double pow=1;
	int minus=0;
	if(y<0)
		minus=-1;
	for(i=1;i<=y;i=i+1)
	{
		pow=pow*x;
	}
	if(minus==-1)
		pow=1/pow;
	return pow;
}

double Exp(int x){
        return Pow(e,x);
}



