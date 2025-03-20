#include <stdio.h>

int main() {
	int num=0;
	int invNum=0;

	printf("Enter your number ");
	scanf("%d", &num);

	while (num != 0) {
		int dig = num%10;
		invNum = invNum*10+dig;
		num/=10;
	}

	printf("I inverted your number %d\n", invNum);

	return 0;
}
