# -*- coding: utf-8 -*-
__author__ = 'leemon'

import os
import tornado.web
import tornado.ioloop
from handlers import *

import sys
reload(sys)
sys.setdefaultencoding('utf-8')
handlers=[
		(r'/',mainHandler),
		(r'/logout',logoutHandler),
        (r'/login',loginHandler),
		(r'/servers/(\d+)?',serversHandler),
        (r'/server/(\d+)',serverHandler),


		]
settings={
		'static_path':os.path.join(os.path.dirname(__file__),'static'),
		'template_path':os.path.join(os.path.dirname(__file__),'templates'),
        'login_url' :'/login',
		}


if __name__ == '__main__':
    app=tornado.web.Application(handlers,**settings)
    app.listen(8888)
    tornado.ioloop.IOLoop.instance().start()