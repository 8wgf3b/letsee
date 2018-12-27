import functools
n = int(input())
a = functools.reduce(lambda x, y: x + y, map(lambda x: x* x, [x + 1 for x in range(n)]))
b = functools.reduce(lambda x, y: x + y, [x + 1 for x in range(n)])
c = b*b -a
print(c)
