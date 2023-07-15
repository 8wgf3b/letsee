import math
from util import inputs

ans = lambda x: math.comb(2 * x, x)

if __name__ == '__main__':
    for i in inputs():
        pi = int(i)
        print(f"Number of lattice paths for {pi} X {pi} grid is {ans(pi)}")
        
 