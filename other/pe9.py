se = set()
for a in range(1,1000):
    for b in range(1, 1000):
        x = frozenset((a, b))
        if x in se:
            continue
        se.add(x)
        c = 1000 - a - b
        if c*c == a*a + b*b:
            print(a*b*c)
