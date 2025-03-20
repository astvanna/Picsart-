#include <stdio.h>

int main(){

	int i;
	
printf("While 1-10\n");
	i=0;
while (i<=10){
	printf("%d ",i);
	i++;
}

printf("\n");
printf("\nWhile 10-0\n");
	i = 10;
while (i>=0){
        printf("%d ",i);
        i--;
}

printf("\n");
printf("\nFor 1-10\n");
for(int i=0;i<=10;i++){
	printf("%d ",i);
}

printf("\n");
printf("\nFor 10-0\n");
for(int i=10;i>=0;i--){
        printf("%d ",i);
}

printf("\n");
printf("\nDowhile 1-10\n");
	i = 0;
do{
        printf("%d ",i);
	i++;
}while(i<=10);

printf("\n");
printf("\nDowhile 10-0\n");
        i = 10;
do{
        printf("%d ",i);
        i--;
}while(i>=0);

printf("\n");

return 0;

}

