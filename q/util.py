import sys


def inputs():
    file = sys.argv[0]
    with open(f"inputs/{file[:-2]}txt", 'r') as f:
        return f.readlines()
