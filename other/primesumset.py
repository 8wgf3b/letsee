import math, time
start = time.time()
N = int(input())
se = set(range(3,N,2))
se.add(2)
for num in range(3, int(N ** 0.5) + 1, 2):
    if num not in se:
        continue
    mult = num
    while mult < N:
        mult += num
        if mult in se:
            se.remove(mult)

print(sum(se))
end = time.time()
print(end - start)
