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
		(r'/',indexHandler),
		(r'/member',memberHandler),
		(r'/chat/(\d+)',chatHandler),
		(r'/register',registerHandler),
		(r'/logout',logoutHandler),
		(r'/post',postHandler),
		# (r'/user/(\w+)',userHandler),
		# (r'/blog/(\d+)',blogHandler),
		# (r'/comment',commentHandler),
		]
settings={
		'static_path':os.path.join(os.path.dirname(__file__),'static'),
		'template_path':os.path.join(os.path.dirname(__file__),'templates'),
		}


if __name__ == '__main__':
    app=tornado.web.Application(handlers,**settings)
    app.listen(8888)
    tornado.ioloop.IOLoop.instance().start()