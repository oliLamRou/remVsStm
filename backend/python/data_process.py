import os
import pandas as pd
import datetime

from backend import DATADIR
filename = DATADIR + '/data.csv'
date = str(datetime.datetime.now())

df = pd.DataFrame(columns=['date'])
if os.path.exists(filename):
    df = pd.read_csv(filename)

df.loc[len(df.index)] = [date]
df.to_csv(filename, index=False)