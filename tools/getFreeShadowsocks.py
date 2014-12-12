import urllib2
import lxml.html as lh
import json
import subprocess


def get_shadowsocks_account():
    account = {}
    headers = {'User-Agent':
               'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36'
               ' (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'}
    req = urllib2.Request(url='http://boafanx.tabboa.com/boafanx-ss/',
                          headers=headers)
    response = urllib2.urlopen(req)
    html = response.read()
    response.close()

    tree = lh.fromstring(html)
    for code in tree.xpath(u"//code"):
        ct = code.text
        if 'server' in ct and 'password' in ct:
            account = json.loads(ct)
            break

    return account


account = get_shadowsocks_account()
print account

sslocal= ("sslocal -s %(server_addr)s -p %(server_port)s"
          " -b %(local_addr)s -l %(local_port)s"
          " -k %(passwd)s -m %(method)s") % {
               'server_addr': account.get("server"),
               'server_port': account.get("server_port"),
               'local_addr': '127.0.0.1',
               'local_port': '1080',
               'passwd': account.get("password"),
               'method': account.get("method")}

print sslocal
subprocess.Popen(sslocal.split())
