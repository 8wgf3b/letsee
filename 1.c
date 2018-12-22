#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
  int n;
  int i = 0;
  while (i < 6)
  {
    scanf("%d", &n);
    printf("%d\n", n);
    ++i;
  }
  return 0;
}
