#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void existsR(char* s1, char* s2)
{
  char* super = strncat(s1, s1, strlen(s1));
//  printf("%s ", super);

  if (strstr(super, s2) != NULL)
  {
    printf("Y\n");

    return;
  }
  printf("N\n");
};

int main()
{
  int n;
  char ch;
  scanf("%d", &n);
//  printf("%d", n);
  scanf("%c", &ch);
  //printf("%c", ch);
  for (int i = 0; i < n; ++i)
  {
    char str0[100], str1[100];
    scanf("%s %s", str0, str1);
  //  printf("%s %s\n", str0, str1);
    existsR(str0, str1);
  //  printf("%d\n", strlen(str0));
  }
  return 0;
};
