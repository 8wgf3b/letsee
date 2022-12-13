class Packet:
    def __init__(self, S):
        self.val = eval(S) if isinstance(S, str) else S

    def __lt__(self, other):
        return -1 == Packet.lthelper(self.val, other.val)

    @staticmethod
    def lthelper(x, y):
        X = isinstance(x, list)
        Y = isinstance(y, list)
        if not X and not Y:
            if x < y:
                return -1
            if x > y:
                return 1
            return 0
        
        if X and Y:
            i = 0
            while i < len(x) and i < len(y):
                r = Packet.lthelper(x[i], y[i])
                if r:
                    return r
                i += 1
            if len(x) < len(y):
                return -1
            if len(x) > len(y):
                return 1
            return 0
        if not X and Y:
            return Packet.lthelper([x], y)
        return Packet.lthelper(x, [y])
    
packets = []
part1 = 0
part2 = 1    
with open('inputs/13.txt', 'r') as f:
    for i, l in enumerate(f.read().split('\n\n')):
        p1, p2 = l.split('\n')
        p1 = Packet(p1)
        p2 = Packet(p2)
        packets.append(p1)
        packets.append(p2)
        if p1 < p2: 
            part1 += 1 + i


packets.append(Packet([2]))
packets.append(Packet([6]))
packets = sorted(packets)
for i, p in enumerate(packets):
    if p.val in [[2], [6]]:
        part2 *= 1 + i
print(part1, part2)