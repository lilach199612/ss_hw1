
#define e 2.71828182846

double Pow(double x,int y){
	int i;
	double pow=1;
	for(i=1;i<=y;i=i+1)
	{
		pow=pow*x;
	}
	return pow;
}

double Exp(int x){
        return Pow(e,x);
}



