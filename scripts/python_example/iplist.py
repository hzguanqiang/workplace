def getIpList():
        import os
        ipList = []
        var = os.popen('ifconfig').read().split("\n\n")
        for item in var:
                #print item
                symble1 = "inet addr:"
                pos1 = item.find(symble1)
                if pos1 >= 0:
                        #print "find it : ",pos1
                        tmp1 = item[pos1+len(symble1):]
                        ipList.append(tmp1[:tmp1.find(" ")])
        return ipList

print getIpList()
