# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado
from db import *

errmsg=False

class mainHandler(tornado.web.RequestHandler):
    def get(self):
        username=self.get_cookie('user')
        if username:
            projects=getProject()
            self.render('index.html',projects=projects,username=username)
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
            projects=getProject()
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
        projects=getProject()
        username=self.get_cookie('user')
        n=len(servers)
        if n%6==0:
            page=n/6
        else:
            page=n/6 +1
        self.render('servers.html',servers=servers,username=username,projects=projects,num=num,page=page)
    def post(self,num):
        pass
class serverHandler(tornado.web.RequestHandler):
    def get(self,num):
        self.render('server.html')
    def post(self):
        pass

class logoutHandler(tornado.web.RequestHandler):
    def get(self):
        self.clear_cookie('user')
        self.redirect('/')
if __name__ == '__main__':
    pass