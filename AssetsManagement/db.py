# -*- coding: utf-8 -*-
__author__ = 'leemon'
import MySQLdb

db = MySQLdb.connect(host='127.0.0.1',user='root',passwd='liminshiwo',db='assetsmanagement',charset='utf8')
c = db.cursor()

def getProject():
    c.execute('select * from projects')
    return c.fetchall()
if __name__ == '__main__':
    projects=getProject()
    for i in projects:
        print i[1],i[2]