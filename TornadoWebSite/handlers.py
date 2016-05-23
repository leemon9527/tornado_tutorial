# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado
import MySQLdb
conn = MySQLdb.connect(host="127.0.0.1",user="root",passwd="liminshiwo",db="website",charset="utf8")
c = conn.cursor()

def showAllBlog():
    c.execute('select id,name,title,time from blog')
    tmp=c.fetchall()
    return tmp[::-1]

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

class indexHandler(tornado.web.RequestHandler):
    def get(self):
        name=self.get_cookie('hackerName')
        blogs=showAllBlog()
        self.render('index.html',cookieName=name,blogs=blogs)
    def post(self):
        name=self.get_argument('username')
        pw=self.get_argument('password')
        res=check(name,pw)
        if res: #密码正确
            self.set_cookie('hackerName',name)
        else: #密码错误
            pass
        self.redirect('/')
if __name__ == '__main__':
    pass