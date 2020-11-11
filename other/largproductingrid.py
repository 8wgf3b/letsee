from operator import mul
from functools import reduce


def combogen(grid, k):
    size = len(grid)
    for row in range(size):
        for col in range(size):
            if row + k - 1 < size:
                yield [grid[row + i][col] for i in range(k)]
            if col + k - 1 < size:
                yield [grid[row][col + i] for i in range(k)]
            if row + k - 1 < size and col + k - 1 < size:
                yield [grid[row + i][col + i] for i in range(k)]
            if row + k - 1 < size and col - k + 1 >= 0:
                yield [grid[row + i][col - i] for i in range(k)]



if __name__ == '__main__':
    ws = 4
    grid = []
    while True:
        try:
            arr = list(map(int, input().split()))
            grid.append(arr)
        except Exception as e:
    #        print(str(e))
            break
    sublists = combogen(grid, ws)
    max_sub = max(sublists, key=lambda x: reduce(mul, x))
    print(max_sub, reduce(mul, max_sub))
