'''
from peeweee import *
from config import PASSWORD

database = MySQLDatabase(
    'lab01',
    user='root', password=PASSWORD,
    host='localhost', port=3306
)
'''

from sqlalchemy import create_engine,MetaData
engine=create_engine('mysql+pymysql:root@localhost:3306/py_crud')
meta=MetaData()
con=engine.connect()