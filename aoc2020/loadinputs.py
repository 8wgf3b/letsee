import sys


def load_input(div_lines=True):
    file = sys.argv[0].split('.')[-2]
    data = open(f'inputs/{file}.txt', 'r').read()
    if not div_lines:
        return data
    else:
        return data.split()
