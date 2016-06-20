# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado
from db import *
import urllib

errmsg=False
class tableHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('welcome.html')


class mainHandler(tornado.web.RequestHandler):
    def get(self):
        username=self.get_cookie('user')
        if username:
            self.render('index.html',username=username)
        else:
            self.redirect('/login')


class loginHandler(tornado.web.RequestHandler):
    def get(self):
        if self.get_current_user():
            self.redirect('/')
            return
        self.render('sign-in.html',errmsg=errmsg)
    def post(self):
        if self.get_current_user():
            raise tornado.web.HTTPError(403)
            return
        username=self.get_argument('username')
        passwd=self.get_argument('password')
        res = check(username,passwd)
        if res:
            self.set_cookie('user',username)
            self.redirect('/')
        else:
            errmsg=True
            self.render('sign-in.html',errmsg=errmsg)
    def get_current_user(self):
        return self.get_cookie('user')


class serversHandler(tornado.web.RequestHandler):
    # @tornado.web.authenticated
    def get(self,num):
        if not num:
            num=1
        servers = showServers()
        username=self.get_cookie('user')
        n=len(servers)
        if n%6==0:
            page=n/6
        else:
            page=n/6 +1
        self.render('servers.html',servers=servers,username=username,num=num,page=page)
    def post(self,num):
        pass


class serverHandler(tornado.web.RequestHandler):
    def get(self,num):
        username = self.get_cookie('user')
        server = showServer(num)
        if server:
            self.render('server.html',username=username,server=server)
        else:
            self.redirect('/error/404')
    def post(self,num):
        id = num
        body = urllib.unquote(self.request.body).split('&')
        args={}
        for kv in body:
            k=kv.split('=')[0]
            v=kv.split('=')[1]
            args[k]=v
        sql = self.dictToSql(args,id)
        result=updateServer(sql)
        self.write(str(result))

    def dictToSql(self,args,id):
        keys = args.keys()
        values = ['"'+v+'"' for v in args.values()]
        i=0
        result = ''
        while i<len(keys):
            result+=keys[i] +'='+values[i]+','
            i+=1
        result=result[:-1]
        sql ='update servers set %s where id="%s"' %(result,id)
        return sql


class deleteHandler(tornado.web.RequestHandler):
    def get(self,num):
        id = num
        delServerById(id)
        self.redirect('/servers/')
    def post(self):
        pass


class errorHandler(tornado.web.RequestHandler):
    def get(self,errorcode='404'):
        self.render('error.html',errorcode=errorcode)


class logoutHandler(tornado.web.RequestHandler):
    def get(self):
        self.clear_cookie('user')
        self.redirect('/')


if __name__ == '__main__':
    pass