#https://stackoverflow.com/questions/17743851/optimise-the-solution-to-project-euler-12-python

import math

def getfact(n):
    r = int(math.sqrt(n))
    s = sum(2 for i in range(1,r + 1) if not n % i)
    return s if r*r != n else s - 1

if __name__ == "__main__":
    for i in range(2,100000):
        tn = i * (i + 1) / 2
        if getfact(tn) >= 500:
            print(tn)
            break
