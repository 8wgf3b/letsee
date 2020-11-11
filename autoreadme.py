import glob

count = len(glob.glob('[0-9+].q'))

readme = "# Project Euler Solutions in kdb-q\n\n"

readme += "Problem | Solution | Input\n --- | --- | ---\n"

with open('names.txt', 'r') as f:
    names = f.readlines()

for i in range(1, count + 1):
    readme += f'[{names[i - 1].rstrip()}](https://projecteuler.net/problem={i}) | '
    readme += f'[{i}.q]({i}.q) | '
    readme += f'[input](inputs/{i},txt)\n'

with open('README.md', 'w') as f:
    f.write(readme)

