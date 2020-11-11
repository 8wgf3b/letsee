import math
ln = math.log
n = int(input())
arr = [2]
limit = n*ln(n) + n*ln(ln(n))
limit = int(limit) + 1
for i in range(2, limit):
    check = True
    for x in arr:
        if i % x == 0:
            check = False
            break
    if check == True:
        arr.append(i)
print(arr[n - 1])
