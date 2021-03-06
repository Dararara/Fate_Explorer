import csv
import psycopg2
from psycopg2 import sql

def find_id(cur, id_name, table, match_name, match_value):
    string = 'select {0} from {1} where {2} = %s;'
    cur.execute(sql.SQL(string).format(sql.Identifier(id_name), sql.Identifier(table), sql.Identifier(match_name), ), [match_value])
    return cur.fetchone()[0]

def delete_single(cur, table_name, term_name, term_value):
    string = 'delete from {} where {} = %s'
    cur.execute(sql.SQL(string).format(sql.Identifier(table_name), sql.Identifier(term_name)), [term_value])

def check_double_exist(cur, table_name, term1, term1_value, term2, term2_value):
    string = 'select exists(select * from {0} where {1} = %s or {2} = %s);'
    print('so far')
    cur.execute(sql.SQL(string).format(sql.Identifier(table_name), sql.Identifier(term1), sql.Identifier(term2)), [term1_value, term2_value])
    print('so good')
    return cur.fetchone()[0]

def insert_double_value(cur, table_name, term1, term1_value, term2, term2_value):
    if(not check_double_exist(cur, table_name, term1, term1_value, term2, term2_value)):
        string = 'insert into {} ({}, {}) values (%s, %s);'
        cur.execute(sql.SQL(string).format(sql.Identifier(table_name), sql.Identifier(term1), sql.Identifier(term2)), [term1_value, term2_value])

def check_single_exist(cur, table_name, term, term_value):
    #name term name specific_name

    string = 'select exists(select * from {0} where {1} = %s);'
    cur.execute(sql.SQL(string).format(sql.Identifier(table_name), sql.Identifier(term,)), (term_value,))
    temp = cur.fetchone()
    return temp[0]

def insert_single_value(cur, table_name, term, term_value):
    #name term_id term name specific_name
    if(not check_single_exist(cur, table_name, term, term_value)):
        string = 'insert into {0} ({1})values(%s);'
        cur.execute(sql.SQL(string).format(sql.Identifier(table_name), sql.Identifier(term)), (term_value,))