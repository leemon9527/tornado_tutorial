# -*- coding: utf-8 -*-
__author__ = 'leemon'
import tornado.web
import hashlib
import xml.etree.ElementTree as ET
import time
class weixinHandler(tornado.web.RequestHandler):
    def get(self):
        signature = self.get_argument('signature')
        timestamp = self.get_argument('timestamp')
        nonce = self.get_argument('nonce')
        echostr = self.get_argument('echostr')
        token = "leemon9527"
        l1 = [token,timestamp,nonce]
        l1.sort()
        sha1 = hashlib.sha1()
        map(sha1.update,l1)
        hashcode = sha1.hexdigest()

        if hashcode == signature:
            self.write(echostr)
    def post(self):
        body = self.request.body
        data = ET.fromstring(body)
        tousername = data.find('ToUserName').text
        fromusername = data.find('FromUserName').text
        createtime = data.find('CreateTime').text
        msgType = data.find('MsgType').text
        content = data.find('Content').text
        msgid = data.find('MsgId').text
        textTpl = """<xml>
            <ToUserName><![CDATA[%s]]></ToUserName>
            <FromUserName><![CDATA[%s]]></FromUserName>
            <CreateTime>%s</CreateTime>
            <MsgType><![CDATA[%s]]></MsgType>
            <Content><![CDATA[%s]]></Content>
            </xml>"""
        out = textTpl % (fromusername,tousername,str(int(time.time())),msgType,content)
        self.write(out)

if __name__ == '__main__':
    pass
