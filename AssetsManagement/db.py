# -*- coding: utf-8 -*-
__author__ = 'leemon'
import MySQLdb

db = MySQLdb.connect(host='127.0.0.1',user='root',passwd='liminshiwo',db='assetsmanagement',charset='utf8')
c = db.cursor()

def getProject():
    c.execute('select * from projects')
    return c.fetchall()
def check(name,pw=None):
    c.execute('select * from admin')
    data=c.fetchall()
    if not pw: #没有密码，则查询用户是否存在
        for i in data:
            if name==i[0]:
                return True
        return False
    else: #存在密码，则查询用户名和密码是否对应
        for i in data:
            if name==i[0]:
                if pw==i[1]:
                    return True
                else:
                    return False
        return False  #都不存在这个用户
def showOnePageServer():
    n=6
    sql = 'select * from servers limit %s' % n
    c.execute(sql)
    return c.fetchall()
def showServers():
    sql = 'select * from servers'
    c.execute(sql)
    return c.fetchall()



if __name__ == '__main__':
    projects=getProject()
    for i in projects:
        print i[1],i[2]