#include <stdio.h>
int main(int argc, const char** argv) {
	for( int i = 0; i < 3; i++ ){
		printf("Loop1\n");
	}
	for( int i = 0; i < 3; i++ ){
		printf("Outside Nested Loop\n");
		int j = 0;
		while( j++ < 2 ){
			printf("Inside Nested Loop\n");
		}
		for(int k=0;k<3;k++){
			for(int p=0;p<2;p++){
				printf("Inside the double nested loop\n");
			}
		}
	}
	return 0;
}
