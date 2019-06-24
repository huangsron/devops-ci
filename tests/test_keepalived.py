#_*_ coding:utf-8 _*_

import unittest
import requests
import json
import subprocess
import os

host = 'http://127.0.0.1/'

class TestStringMethods(unittest.TestCase):

    def test_return_status(self):
        # 自訂表頭
        my_headers = {'Host': 'keepalived.domain.local'}

        # 使用 GET 方式下載普通網頁 allow_redirects：URL導向
        r = requests.get(host, headers=my_headers)

        self.assertEqual(r.status_code,200)
        
if __name__ == '__main__':
    # import HtmlTestRunner
    # unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output='reports'))
    import xmlrunner
    unittest.main(testRunner=xmlrunner.XMLTestRunner(output='test-reports'))
   