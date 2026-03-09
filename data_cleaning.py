import pandas as pd

# Load raw lab data
df = pd.read_csv('raw_labs.csv')

# Clean data: Remove rows where Lab Result is missing
df_clean = df.dropna(subset=['LBORRES'])

# Standardize units
df_clean['LBSTRESC'] = df_clean['LBORRES'].apply(lambda x: str(x) + ' mg/dL')

print("Data ready for SDTM mapping.")
