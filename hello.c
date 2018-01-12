#include<stdio.h>
#include <ctype.h>
int main(){ 
  char str[] = "myString";
  for(int i = 0; str[i]; i++){
    str[i] = tolower(str[i]);
  }
  printf("%s", str);
  return 0;
}
