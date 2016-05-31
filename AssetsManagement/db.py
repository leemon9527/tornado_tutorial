# -*- coding: utf-8 -*-
__author__ = 'leemon'
import MySQLdb


def conn():
    db = MySQLdb.connect(host='127.0.0.1',user='root',passwd='liminshiwo',db='assetsmanagement',charset='utf8')
    c = db.cursor()
    return db,c

def getProject():
    db,c=conn()
    c.execute('select * from projects')
    db.close()
    return c.fetchall()
def check(name,pw=None):
    db,c=conn()
    c.execute('select * from admin')
    data=c.fetchall()
    db.close()
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
    db,c=conn()
    n=6
    sql = 'select * from servers limit %s' % n
    c.execute(sql)
    db.close()
    return c.fetchall()
def showServers():
    db,c=conn()
    sql = 'select * from servers'
    c.execute(sql)
    db.close()
    return c.fetchall()
def showServer(num):
    db,c=conn()
    sql = 'select * from servers where id=%s' %num
    c.execute(sql)
    data = c.fetchall()
    db.close()
    if data:
        return data[0]
    else:
        return False
def delServerById(id):
    db,c=conn()
    sql = 'delete from servers where id=%s' % id
    try:
        c.execute(sql)
        db.commit()
        db.close()
        return True
    except:
        db.rollback()
        db.close()
        return False

if __name__ == '__main__':
    projects=getProject()
    for i in projects:
        print i[1],i[2]