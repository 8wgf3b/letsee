from util import inputs


ans = lambda x: sum(int(i) for i in str(2 ** x))

if __name__ == '__main__':
    for i in inputs():
        print(f"Sum of digits in 2**{i.strip()} is {ans(int(i))}")