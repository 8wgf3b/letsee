import numpy as np

def getdata(filename):
    temp = []
    with open(filename, 'r') as f:
        for line in f:
            temp.append(list(map(int, list(line)[:-1])))
    return np.array(temp)

def summer(matrix):
    res = np.zeros(matrix.shape[1], dtype=int)
    cf = 0
    for i in range(matrix.shape[1] - 1, -1, -1):
        s = np.sum(matrix[:, i]) + cf
        res[i] = s % 10
        cf = s // 10
    return cf, res


if __name__ == "__main__":
    #print(len(getdata('./input.txt')[0]))
    npm = getdata('./input.txt')
    cf, res = summer(npm)
    td = str(cf) + ''.join(str(w) for w in res)
    print(td[:10])
