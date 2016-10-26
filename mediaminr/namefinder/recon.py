#!/usr/bin/env python

"""
Script finds all your all social media profiles for a provided username
"""

import time
import sys
import os.path

# settings
user = raw_input("enter username: ")
user_list = user.split()


for i in range(len(user_list)):

    # mkdir and cachefiles for each user
    if not os.path.exists(user_list[i]):
        os.mkdir(user_list[i] + "_profiles")

    cachefile = os.path.join(user_list[i] + "_profiles", "profiles_cache.txt")

    #update followers
    print "updating profiles for user %s..." % (user_list[i], )

    cmd = "../../recon-ng/recon-cli -m profiler -o source=%s -x" % (user_list[i], )
    # jsonOut = "./recon-cli -m json -o filename=./%s.json -o tables=profiles -x" % (user_list[i], )

    usernames = os.popen(cmd).read()
    # printJson = os.popen(jsonOut).read()
    print(usernames)

    # unames = [x.screen_name.lower() for x in followers]
    # unames = usernames.split()
    # print(unames)

    # if os.path.isfile(cachefile):
    #
    #   # do a diff with the currently saved cached file of followers
    #   f = open(cachefile, 'r')
    #   oldunames = [x.strip() for x in f.readlines()]
    #   f.close()
    #
    #   unow = set(usernames)
    #   ubefore = set(oldunames)
    #
    #   # people who follow user name but didnt before
    #   newfollows = unow - ubefore
    #
    #   print '%d New followers: ' % (len(newfollows), )
    #   for x in newfollows: print x
    #   print '---------'
    #
    #   # people who followed user before but dont now
    #   unfollows = ubefore - unow
    #
    #   print '%d People who unfollowed you: ' % (len(unfollows), )
    #   for x in unfollows: print x
    #   print '---------'
    #
    # else:
    #
    #   print "followers cache does not exist so nothing to compare to."
    #
    # # ask user about what to do
    # tosave = raw_input("Do you want to save followers to cache file [%s]? yes/no: " % (cachefile, ))
    # if tosave=="yes":
    #
    #   # back up followers to file
    #   print "OK Saved followers to file [%s]" % (cachefile, )
    #   f = open(cachefile, 'w')
    #   f.writelines([x+'\n' for x in usernames])
    #   f.close()
    #
    # else:
    #   print "Answer != 'yes' so not saving a cache file. Bye!"
