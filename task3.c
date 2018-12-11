#include <stdio.h>
int main(int argc, const char** argv) {
	for(int i=0 ; i<3 ; i++ ){
		for( int j = i; j < 3; j++ ){
			for(int k=j;k<3;k++){
				printf("Hi");
			}
		}
	}
	return 0;
}
