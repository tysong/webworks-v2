def add_dns(interface):
    str = ""
    try:
        with open('dns') as dnsfile:
            dnsdata = dnsfile.readlines()
            dnslist = [ x.strip() for x in dnsdata ]
            for item in dnslist:
                if interface in item:
                    str += item.split('@')[0].replace("server=",
"nameserver ")
                    str += "\n"
        with open("resolv.conf", "w") as f:
            f.write(str)
    except:
        print("Could not find DNS file")
    print str

add_dns("op0")
