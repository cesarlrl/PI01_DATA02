import glob
import pandas as pd

# Searching only for json files and converting them to csv
dir1 = 'DatasetsCopy'
dir2 = 'DatasetsCopy\\Qualifying'
for files in glob.glob(r'C:\\Users\\Cesar\\Documents\\Data Science SH\\PI01_DATA02\\DatasetsCopy\\*.json'):
    path = files.replace('.json', '.csv')
    filenames = path.split('\\')
    filenamecsv = filenames[-1]
    df = pd.read_json(files, lines=True)
    df.to_csv(dir1 + '\\' + filenamecsv)

'''
for files in glob.glob(r'C:\\Users\\Cesar\\Documents\\Data Science SH\\PI01_DATA02\\DatasetsCopy\\Qualifying\\*.json'):
    path2 = files.replace('.json', '.csv')
    filenames2 = path2.split('\\')
    filenamecsv2 = filenames2[-1]
    df = pd.read_json(files, lines=True)
    df.to_csv(dir2 + '\\' + filenamecsv2)
'''

'''
df1 = pd.read_json('.\\Datasets\\constructors.json', lines=True)
df2 = pd.read_json('.\\Datasets\\drivers.json', lines=True)
#df3 = pd.read_json('.\\Datasets\\pit_stops.json', lines=True) --- This json has issues
df4 = pd.read_json('.\\Datasets\\results.json', lines=True)

print(df1)
'''