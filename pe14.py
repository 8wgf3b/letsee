import progressbar
from collections import defaultdict

print('wow')
bar = progressbar.ProgressBar()
maxl = -1
num = 1
vis = defaultdict(lambda : 0)
for i in bar(range(1, 1000001)):
    if i in vis:
        continue
    temp = i
    steps = 1
    while temp != 1:
        if temp % 2 == 0:
            temp = temp // 2
            if temp in vis:
                steps += vis[temp]
                vis[i] = steps
                break
            steps += 1
        else:
            temp = 3*temp + 1
            if temp in vis:
                steps += vis[temp]
                vis[i] = steps
                break
            steps += 1
    if steps > maxl:
        maxl = steps
        num = i
        vis[i] = steps
print(num, maxl)
