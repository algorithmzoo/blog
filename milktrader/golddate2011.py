#!/usr/bin/python

import re
import urllib

def main():
  myurl = "http://www.usagold.com/reference/prices/2011.html"


  uf = urllib.urlopen(myurl)
  f  = uf.read()
  uf.close()

 
  gold = re.findall(r'(\d\d\/\d\d/\d\d)<BR>',f)

  for day in gold:
    print day

if __name__ == '__main__':
  main()

               
