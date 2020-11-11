#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void circ(char* str)
{
  int len = strlen(str);
  int x = 0, y = 0;
  char dir = 'N';
  for(int i = 0; i < len; ++i)
  {
    char c = str[i];
  //  printf("%c\n", c);
    switch(c)
    {
      case 'M':
        if (dir == 'N')
        {
          ++y;
        }
        else if (dir == 'E')
        {
          ++x;
        }
        else if (dir == 'S')
        {
          --y;
        }
        else
        {
          --x;
        }
        break;
      case 'L':
        if (dir == 'N')
        {
          dir = 'W';
        }
        else if (dir == 'E')
        {
          dir = 'N';
        }
        else if (dir == 'S')
        {
          dir = 'E';
        }
        else
        {
          dir = 'S';
        }
        break;
      case 'R':
        if (dir == 'N')
        {
          dir = 'E';
        }
        else if (dir == 'E')
        {
          dir = 'S';
        }
        else if (dir == 'S')
        {
          dir = 'W';
        }
        else
        {
          dir = 'N';
        }
    }
  }
  if ((x == 0) && (y == 0) )
  {
    printf("C\n");
  }
  else
  {
    printf("NC\n");
  }
}

int main(void)
{
  int n;
  char* str;
  str = (char *) malloc(100 * sizeof(char));
  scanf("%d", &n);
  for(int i = 0; i < n; ++i)
  {
    scanf("%s", str);
    circ(str);
  }
  return 0;
}
