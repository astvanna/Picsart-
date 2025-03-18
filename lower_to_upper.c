#include <stdio.h>

char uppercase(char c) {
    return c & ~32;
}

int main() {
    char input, output;
    
    printf("Enter a character: ");
    scanf("%c", &input);
    
    output = uppercase(input);
    
    printf("%c\n", output);
    
    return 0;
}
