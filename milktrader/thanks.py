#!/usr/bin/python

import re
import urllib

def main():
  myurl = "http://www.altiusdirectory.com/Society/thanksgiving-day-dates.html"


  uf = urllib.urlopen(myurl)
  f  = uf.read()
  uf.close()
 
  thanks = re.findall(r'Thursday.\s(November\s\d\d,\s\d\d\d\d)\sThanks', f)

  for day in thanks:
    print day

# from here we pipe to get the file just so

if __name__ == '__main__':
  main()

#   <td class="toptext" bgcolor="#ffffff">Thursday, November 24, 1955 Thanksgiving Day</td>
#   <td class="toptext" bgcolor="#ffffff">Monday, October 10, 1955 Thanksgiving Day</td>
               
