#include <stdio.h>

int execute(int a,int b,char c){
	int d = a+b;
	if(c=='a'){
		a++;
	}
	else{
		b++;
	}
	int i=0;
	for(i=0;i<10;i++){
		d++;
	}
	return d;
}

int main(int argc, const char** argv) {
	int num;
	printf("%d",execute(3,1,'a'));
	return 0;
}
