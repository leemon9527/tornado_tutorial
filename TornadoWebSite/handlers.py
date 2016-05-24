# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado
from functions import *

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
class registerHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('register.html')
    def post(self):
        name = self.get_argument('username')
        pw = self.get_argument('password')
        res = check(name,pw)
        if res:
            self.redirect('/register')
        else:
            insert(name,pw)
            self.set_cookie('hackerName',name)
            self.redirect('/')

class memberHandler(tornado.web.RequestHandler):
    def get(self):
        name = self.get_cookie('hackerName')
        users=show()
        users.sort(key=lambda x:x[3],reverse=True)
        self.render('member.html',cookieName=name,users=users)

class chatHandler(tornado.web.RequestHandler):
    def get(self,num):
        name = self.get_cookie('hackerName')
        chats = showChat()
        n = len(chats)
        if n%20 ==0:
            pages=n//20
        else:
            pages=n//20 + 1
        self.render('chat.html',cookieName=name,content=chats,pages=pages,num=num)
    def post(self,num):
        name = self.get_cookie('hackerName')
        if not name:
            return
        newTopic = self.get_argument('topic')
        insertChat(name,newTopic)
        self.redirect('/chat/1')

class postHandler(tornado.web.RequestHandler):
    def get(self):
        name = self.get_cookie('hackerName')
        self.render('post.html',cookieName=name)
    def post(self):
        title = self.get_argument('title')
        blog_md = self.get_argument('blog')
        blog = translate(blog_md)
        name =self.get_cookie('hackerName')
        idvalue = insertBlog(name,title,blog)
        self.redirect('/blog/'+str(idvalue))
class logoutHandler(tornado.web.RequestHandler):
    def get(self):
        self.set_cookie('hackerName','')
        self.redirect('/')

# class blogHandler(tornado.web.RequestHandler):
#     def get(self,idvalue):
#         selfname=self.get_cookie('hackerName')
#         blog=showOneBlog(idvalue)
#         comments=showComment(idvalue)
#         self.render('blog.html',cookieName=selfname,blog=blog,comments=comments)
#
# class commentHandler(tornado.web.RequestHandler):
#     def post(self):
#         selfname=self.get_cookie('hackerName')
#         comment=self.get_argument('comment')
#         refer=self.request.headers.get('referer')
#         for i in range(len(refer)-1,0,-1):
#             if refer[i]=='/':
#                 break
#         blogid=refer[i+1:]
#         print(blogid)
#         addComment(blogid,selfname,comment)
#         self.redirect('/blog/'+blogid)
if __name__ == '__main__':
    pass