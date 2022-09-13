from peewee import *
from config import PASSWORD

database = MySQLDatabase(
    'lab01',
    user='root', password=PASSWORD,
    host='localhost', port=3306
)