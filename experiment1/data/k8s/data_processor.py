import pandas as pd
import sys

res = []
for line in sys.stdin:
    line = line.strip().split(',')
    keeps = line[0:3]
    res.append(keeps)

pd.DataFrame(res).to_csv(sys.argv[1]+".csv")
