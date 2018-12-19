#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
  int n;
  scanf("%d", &n);
  printf("no. of test cases %d\n",n);
  char* str;
  for (int i = 0; i < n; ++i)
  {
    str = (char *) malloc(100*sizeof(char));
    scanf("%s", str);
    printf("%s\n", str);
    free(str);
  }
  return 0;
}
