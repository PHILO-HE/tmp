#!/usr/bin/python2
import xml.etree.ElementTree as ET
import sys
import os
import subprocess

CONFIG_PATH = 'config.xml'

#def absoluteFilePaths(directory):
#    res = []
#    for dirpath, dirs, _ in os.walk(directory):
#        for d in dirs:
#            res.append(os.path.abspath(os.path.join(dirpath, d)))
#    return res

def absoluteFilePaths(directory):
    res = []
    for d in os.listdir(directory):
        res.append(os.path.join(directory, d))
    return res


def modifyConfig(path):
    config = ET.parse(CONFIG_PATH)
    root = config.getroot()
    root[3].text = os.path.join(path, 'instruments')
    config.write(CONFIG_PATH)
    return root[3].text

def main():
    if len(sys.argv) > 1:
        dir_path = sys.argv[1]
    else:
        dir_path = 'results'
    dirs = absoluteFilePaths(dir_path)
    for dir in dirs:
        print "Started processing ", dir
        d = modifyConfig(dir)
        if not os.path.exists(d):
            print "\033[36m[CXX]" + d + " is a invalid parttern.\033[0m"
            continue
        os.system('./pat-post-process.py')
        #subprocess.call('python pat-post-process.py', shell=True)
        print "Completed processing ", dir

if __name__ == '__main__':
    main()
