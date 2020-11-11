import math, time
start = time.time()
N = int(input())
arr = [2]
#print(math.sqrt(N))
for num in range(3, N):
    limit = math.sqrt(num)
    check = True
    for x in arr:
        if x > limit:
            break
        if num % x == 0:
            check = False
            break
    if check == True:
#        print(num)
        arr.append(num)
print(sum(arr))
end = time.time()
print(end - start)
