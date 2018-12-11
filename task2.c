#include <stdio.h>
int main(int argc, const char** argv) {
	for(int i=0 ; i<3 ; i++ ){
		for( int j = i; j < 3; j++ ){
			if(j<2){
				printf("Imperfect\n");
			}
			for(int k=0;k<3;k++){
				printf("Hi");
			}
		}
	}
	return 0;
}
