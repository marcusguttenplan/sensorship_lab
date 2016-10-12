#!/usr/bin/env python

"""
Script finds all your followers and saves them to file. Re-running the script
will do a diff with that file so you can see who followed or unfollowed you
since last time you ran the script.

Requires tweepy library
"""

import tweepy
import time
import sys
import os.path
from tweetutils import *

# settings
user = raw_input("enter username: ")
user_list = user.split()

# authenticate using OAUTH
api = authenticate()

# download followers
for i in range(len(user_list)):

    # mkdir and cachefiles for each user
    if not os.path.exists(user_list[i]):
        os.mkdir(user_list[i])

    cachefile = os.path.join(user_list[i], "followers_cache.txt")

    #update followers
    print "updating followers for user %s..." % (user_list[i], )

    cmd = "t followers " + user_list[i]
    followers = os.popen(cmd).read()
    print(followers)

    # unames = [x.screen_name.lower() for x in followers]
    unames = followers.split()
    print(unames)

    if os.path.isfile(cachefile):

      # do a diff with the currently saved cached file of followers
      f = open(cachefile, 'r')
      oldunames = [x.strip() for x in f.readlines()]
      f.close()

      unow = set(unames)
      ubefore = set(oldunames)

      # people who follow user name but didnt before
      newfollows = unow - ubefore

      print '%d New followers: ' % (len(newfollows), )
      for x in newfollows: print x
      print '---------'

      # people who followed user before but dont now
      unfollows = ubefore - unow

      print '%d People who unfollowed you: ' % (len(unfollows), )
      for x in unfollows: print x
      print '---------'

    else:

      print "followers cache does not exist so nothing to compare to."

    # ask user about what to do
    tosave = raw_input("Do you want to save followers to cache file [%s]? yes/no: " % (cachefile, ))
    if tosave=="yes":

      # back up followers to file
      print "OK Saved followers to file [%s]" % (cachefile, )
      f = open(cachefile, 'w')
      f.writelines([x+'\n' for x in unames])
      f.close()

    else:
      print "Answer != 'yes' so not saving a cache file. Bye!"
