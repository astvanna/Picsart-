#include <stdio.h>

int main() {
	int num = 0;
	int invNum = 0;

	printf("Enter your number ");
	scanf("%d", &num);

	while (num != 0) {
		int dig = num%10;
		invNum = invNum*10 + dig;
		num /= 10;
	}

	while (invNum != 0) {
		int dig = invNum%10;
		printf("%d", dig);
		invNum /= 10;
		if (invNum != 0) {
			printf(", ");
		}
	}
	printf("\n");

	return 0;
}
