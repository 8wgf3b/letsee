import glob

readme = "* [AOC 2021](#advent-of-code-2021)\n"
readme += "* [AOC 2020](#advent-of-code-2020-solutions-in-kdb-q)\n"
readme += "* [Project Euler](#project-euler-solutions-in-kdb-q)\n"

all_q = set(glob.glob('q/*.q'))
aoc_q = set(glob.glob('aoc2020/*.q'))
aoc1_q = set(glob.glob('aoc2021/*.q')) - set(glob.glob('aoc2021/util.q'))
aoc1_h = set(glob.glob('aoc2021/*.hs')) - set(glob.glob('aoc2021/util.hs'))
aoc1_f = set(glob.glob('aoc2021/*.fs')) - set(glob.glob('aoc2021/util.fs'))


euler = set(f'q/{i + 1}.q' for i in range(750))
count = len(all_q & euler)
aoc = set(f'aoc2020/{i + 1}.q' for i in range(30))
count_aoc = len(aoc & aoc_q)

readme += "# Advent of Code 2020 Solutions in kdb-q\n\n"

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

