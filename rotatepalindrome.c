#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void boundPal(char* str, int* low, int* high)
{
  int l = strlen(str);
  while ((*low >= 0)  && (*high < l) && (str[*low] == str[*high]))
  {
    *low = *low - 1;
    *high = *high + 1;
  }
  *low = *low + 1;
  *high = *high - 1;
};

void printString(char* str, int* low, int* high)
{
  for (int i = *low; i <= *high; ++i)
  {
    printf("%c", str[i]);
  }
    printf("\n");
};


void longestPalindromeSS(char* str)
{
  int l = strlen(str);
  int max = -1, cl, ch, ml, mh;
  for (int i = 0; i < l; ++i)
  {
    cl = i;
    ch = i;
    boundPal(str, &cl, &ch);
    if (max < ch - cl + 1)
    {
      max = ch - cl + 1;
      ml = cl;
      mh = ch;
    }
  }
  for (int i = 0; i < l - 1; ++i)
  {
    cl = i;
    ch = i + 1;
    boundPal(str, &cl, &ch);
    if (max < ch - cl + 1)
    {
      max = ch - cl + 1;
      ml = cl;
      mh = ch;
    }
  }
  if (max > -1)
  {
    printString(str, &ml, &mh);
  }
  else
  {
    printf("Nah\n");
  }
};

void rotate(char* str)
{
  int len = strlen(str) / 2;
  int l = len * 2;
  int cl, ch, ml, mh;
  for (int i = 0; i < l; ++i)
  {
    cl = i;
    ch = i;
    boundPal(str, &cl, &ch);
    if (len == ch - cl + 1)
    {
      printf("Yes\n");
      return;
    }
  }
  for (int i = 0; i < l - 1; ++i)
  {
    cl = i;
    ch = i + 1;
    boundPal(str, &cl, &ch);
    if (len == ch - cl + 1)
    {
      printf("Yes\n");
      return;
    }
  }
  printf("No\n");
};

int main(void)
{
  int n;
  scanf("%d", &n);
  char* str;
  for(int i = 0; i < n; ++i)
  {
    scanf("%s", str);
    char* super = strncat(str, str, strlen(str));
//    printf("%d\n", strlen(super));
    rotate(super);
    longestPalindromeSS(super);
  }
  return 0;
}
