import glob

all_q = set(glob.glob('q/*.q'))
aoc_q = set(glob.glob('aoc2020/*.q'))
euler = set(f'q/{i + 1}.q' for i in range(750))
count = len(all_q & euler)
aoc = set(f'aoc2020/{i + 1}.q' for i in range(30))
count_aoc = len(aoc & aoc_q)

readme = "# Advent of Code 2020 Solutions in kdb-q\n\n"

readme += "Day | Solution | Input\n --- | --- | ---\n"

for i in range(1, count_aoc + 1):
    readme += f'[{i}](https://adventofcode.com/2020/day/{i}) | '
    readme += f'[{i}.q](aoc2020/{i}.q) | '
    readme += f'[input](aoc2020/inputs/{i}.txt)\n'

readme += "# Project Euler Solutions in kdb-q\n\n"

readme += "Problem | Solution | Input\n --- | --- | ---\n"

with open('names.txt', 'r') as f:
    names = f.readlines()

for i in range(1, count + 1):
    readme += f'[{names[i - 1].rstrip()}](https://projecteuler.net/problem={i}) | '
    readme += f'[{i}.q](q/{i}.q) | '
    readme += f'[input](q/inputs/{i}.txt)\n'

with open('README.md', 'w') as f:
    f.write(readme)

