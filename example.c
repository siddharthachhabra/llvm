#include <stdio.h>

void foobar(int p) {
	for(int i=0;i<3;i++){	
		for(int j=0;j<3;j++){
			for(int k=0;k<5;k++){
				printf("Hello\n");
			}
		}
	}
  }

int main(int argc, const char** argv) {
	foobar(10);
	return 0;
}
