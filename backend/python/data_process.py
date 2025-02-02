import pandas as pd

from backend import DATADIR
filename = DATADIR + '/data.csv'

df = pd.DataFrame(columns=['name', 'age'])
df.to_csv(filename, index=False)