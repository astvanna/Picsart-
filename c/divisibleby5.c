#include <stdio.h>

int main(){

	int a;
	int b;

	printf("Enter your first number: ");
	scanf("%d",&a);
	printf("Enter your second number: ");
	scanf("%d",&b);

	while(a>b){
		printf("The first number should be less or equal than the second\n");
		printf("Enter your first number: ");
		scanf("%d",&a);
		printf("Enter your second number: ");
		scanf("%d",&b);
	}
	int i;
	int count = 0;
	
	for(int i=a;(i>=a)&&(i<=b);i++){
		if(i%5==0){
			count++;
		}
	}
	printf("%d numbers are divisible by 5 in range [%d;%d]",count,a,b);

	printf("\n");
	return 0;
}
