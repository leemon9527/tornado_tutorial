# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado
from db import *
class mainHandler(tornado.web.RequestHandler):
    def get(self):
        projects=getProject()
        return self.render('index.html',projects=projects)

class logoutHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('sign-in.html')
if __name__ == '__main__':
    pass