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
    # followers = tweepy.Cursor(api.followers, id=user_list[i]).items()
    cmd = "t followers " + user_list[i]
    followers = os.system(cmd)
    print(followers)
