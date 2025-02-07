#include <stdio.h>
#include <string.h>

int main(){
    printf("Enter a word : ");
    char word[100];
    scanf("%s%*[^\n]", word);
    printf("Enter how many letters are gonno be printed : ");
    int letters;
    scanf("%d%*[^\n]", &letters);
    printf("Enter the padded letter : ");
    char temp;
    scanf(" %c", &temp);
    printf("\nThe word : %s\nN of letters entered : %d\nThe padded letter : %c\n", word, letters, temp);
    for(int i = 0; i <= letters; i++){
        if(word[i] == '\0'){
            for(int j = i; j <= letters; j++)
                word[j] = temp;
            word[letters] = '\0';
            break;
        }
    }
    printf("\n%s\n", word);

}
