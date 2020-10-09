import sys
import math


def digit_summer(num):
    total = 0
    for digit in str(num):
        total += int(digit)
    return total


def prime_factor_sum(N):
    total = 0
    i = 1
    N, _ = factor_sum(N, 2)
    total += _
    N, _ = factor_sum(N, 3)
    total += _
    while 6 * i - 1 <= N:
        n1, n2 = 6*i - 1, 6*i + 1
        N, _ = factor_sum(N, n1)
        total += _
        N, _ = factor_sum(N, n2)
        total += _
        i += 1
    return total


def factor_sum(x, y):
    sum = 0
    dig_sum = digit_summer(y)
    while x % y == 0:
        sum += dig_sum
        x //= y
    return x, sum


def isprime(n):
    pass


if __name__ == '__main__':
    num = int(sys.argv[1])
    print(digit_summer(num), prime_factor_sum(num))
