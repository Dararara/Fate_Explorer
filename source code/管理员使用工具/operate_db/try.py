from sqlalchemy.engine import create_engine
import csv
import traceback

engine = create_engine("postgresql://dararara:123456@localhost:5432/dararara")
#engine = create_engine("postgresql://root@122.152.251.171:5432/root")
connection = engine.connect()

