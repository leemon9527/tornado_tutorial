# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado.ioloop
import tornado.web
import os

settings = {
    "static_path": os.path.join(os.path.dirname(__file__),"static"),
    "debug":True,
}
class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("Hello World adfaf leemon.")

class GetArgsHandler(tornado.web.RequestHandler):
    def get(self):
        self.write(
            '<html><body><form action="/GetArgs" method="post">'
            '<input type="text" name="message">'
            '<input type="submit" value="Submit">'
            '</form></body></html>'
        )
    def post(self):
        self.set_header("Content-Type","text/plain")
        self.write("You wrote "+ self.get_argument("message"))

if __name__ == '__main__':
    application = tornado.web.Application([
        (r"/",MainHandler),
        (r"/GetArgs",GetArgsHandler),
        (r"/(apple-touch-icon\.png)",tornado.web.StaticFileHandler,dict(path=settings['static_path'])),
    ],**settings)
    application.listen(8888)
    tornado.ioloop.IOLoop.instance().start()