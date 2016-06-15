#!/usr/bin/env python

import tornado.escape
import tornado.ioloop
import tornado.web
import re
from tornado.options import define, options, parse_command_line
import os

define("port", default=8899, help="run on the given port", type=int)
define("debug", default=False, help="run in debug mode")

class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.render("index.html")
class GetLogHandler(tornado.web.RequestHandler):
    def get(self):
        #command here
        refer = self.request.headers.get('referer')
        host = self.request.headers.get('Host')
        if refer:
            if refer.split('/')[2] == host:
                pass
            else:
                self.write(u'refer invalid!<br><a href="/">return</a>')
                return
        else:
            self.write(u'refer invalid!<br><a href="/">return</a>')
            return
        if self.get_argument("url",None):
            deploy_url=self.get_argument("url")
            if self.url_check(deploy_url) and str(deploy_url).endswith("tar.gz"):
                os.system('start /b ping 127.1 -n 10 >static/test.txt')
                self.render("getlog.html")
            else:
                self.write(u'URL invalid!<br><a href="/">return</a>')
                return
        else:
            self.write(u'URL invalid!<br><a href="/">return</a>')
            return
    def url_check(self,url):
        regex = re.compile(
        r'^(?:http|ftp)s?://' # http:// or https://
        r'(?:(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\.)+(?:[A-Z]{2,6}\.?|[A-Z0-9-]{2,}\.?)|' #domain...
        r'localhost|' #localhost...
        r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' # ...or ip
        r'(?::\d+)?' # optional port
        r'(?:/?|[/?]\S+)$', re.IGNORECASE)
        if regex.findall(url):
            return True
        else:
            return False


def main():
    parse_command_line()
    app = tornado.web.Application(
        [
            (r"/", MainHandler),
            (r"/getlog", GetLogHandler),
            ],
        cookie_secret="__TODO:_GENERATE_YOUR_OWN_RANDOM_VALUE_HERE__",
        template_path=os.path.join(os.path.dirname(__file__), "templates"),
        static_path=os.path.join(os.path.dirname(__file__), "static"),
        xsrf_cookies=True,
        debug=options.debug,
        )
    app.listen(options.port)
    tornado.ioloop.IOLoop.current().start()


if __name__ == "__main__":
    main()
