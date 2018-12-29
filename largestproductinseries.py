import functools
x = ''
w = 13
while True:
    try:
        tex = input()
        x += tex
    except Exception:
        break
n = len(x)
x = [int(c) for c in x]
x = [x[i: i + w] for i in range(1 + n - w)]
y = [functools.reduce(lambda x, y: x*y , part) for part in x]
print(max(y))
