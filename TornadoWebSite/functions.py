# -*- coding: utf-8 -*-
__author__ = 'leemon'
import MySQLdb
import time
import html
import markdown2

conn = MySQLdb.connect(host="127.0.0.1",user="root",passwd="liminshiwo",db="website",charset="utf8")
c = conn.cursor()

def getTime():
    return time.strftime("%H:%M:%S")
def showAllBlog(): #显示所有BLOG
    c.execute('select id,name,title,time from blog')
    tmp=c.fetchall()
    return tmp[::-1]
def show(): #显示所有用户
    users=[]
    c.execute('select * from USER ')
    for i in c.fetchall():
        users.append(i)
    return users

def showChat():
    c.execute('select * from chat')
    tmp = c.fetchall()
    return tmp[::-1] #逆序，最新贴放在最上面

def check(name,pw=None):
    c.execute('select * from user')
    data=c.fetchall()
    if not pw: #没有密码，则查询用户是否存在
        for i in data:
            if name==i[1]:
                return True
        return False
    else: #存在密码，则查询用户名和密码是否对应
        for i in data:
            if name==i[1]:
                if pw==i[2]:
                    return True
                else:
                    return False
        return False  #都不存在这个用户
def insert(name,pw):
    sql = 'INSERT INTO user(name,pw) VALUES("%s","%s")' % (name,pw)
    try:
        c.execute(sql)
        conn.commit()
    except:
        conn.rollback()

def insertChat(name,content):
    now=getTime()
    sql = 'insert into chat(name,content,time) VALUES("%s","%s","%s")' % (name,content,now)
    try:
        c.execute(sql)
        conn.commit()
    except:
        conn.commit()

def insertBlog(name,title,blog):
    now=getTime()
    sql='insert into blog(name,title,blog,time) VALUES("%s","%s","%s","%s")' % (name,title,blog,time)
    try:
        c.execute(sql)
        conn.commit()
        #取最新的blog id
        c.execute('select max(id) from blog')
        return c.fetchall()[0][0]
    except:
        conn.rollback()
whitelist=[('',''),]
def translate(md):
    for i in whitelist:
        if i[0] in md:
            md=md.replace(i[0],i[1])
    md2 = html.escape(md)
    data = markdown2.markdown(md2)
    for i in whitelist:
        if i[1] in data:
            data=data.replace(i[1],i[0])
    return data




if __name__ == '__main__':
    pass