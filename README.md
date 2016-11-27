# sensorship_lab

Our lab is a space for mutual provocations between technologies of surveying and ethnographic ways of seeing. How have ethnographers adapted methodologically to witness events in the digital age? What insight can the history of ethnography provide for the future of biometrics and tracking? 

We introduce automated investigation techniques for mining data online, and utilize computer vision to track and collect biometric data. How can ethnographers engage these tools to augment an ethnographic output? Can these tools be used to create collaborative outputs co-produced by interlocutors and communities? What does an  ‘open-source’ model look like for ethnography?

The lab encourages participants to envision a creative dismantling of designed power systems: Once you have learned to find faces, you can also obfuscate or swap faces -- providing camouflage, subversion, or protection. Can ethnography inform biometric design to create methods of anti-profiling? How can ethnographic expertise inform critical consciousness and disruption of mass surveillance?

### automated investigation

Tools and techniques for mining information from everyday activity. (fix this bullshit)

* [Facetracker](#facetracker)
* [twitdiff](#twitdiff)
* [emailcrawl](#emailcrawl)
* [sentiments](#sentiments)
* [namefinder](#namefinder)
* [backpack](#backpack)

Hella thanks to the creators of Recon-ng, waybackpack, theHarvester, and all of the other tools we used. These tools are not being redistributed without acknowledging their creators, and definitely will not be used to make money. We basically built a shim for the tools to slightly unify them for a demo to anthropologists on the power of OSINT information gathering.

## Installation

**TO-DO**

* Get all of this installed on a clean Mac and Raspberry Pi to baseline requisites (Windows in the future).
* Primer for finding and using tools like this
* There are packages inside of the scripts that are required and might need to be sussed out


##### Brew
Install homebrew for OS X
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

##### Git
```
brew install git
```

##### Node
```
brew install node
```

##### Python
Brew will also install `python`, a programming language, and `pip`, python's package manager.

```
brew install python
```

##### Open CV
```
brew tap homebrew/science
brew install opencv3 --HEAD
```

##### Tweet Tracking
```
gem install t
```

```
t authorize
```

```
t accounts
```

```
t set active <user> <token>
```

```
t followers <user> > followlist.txt
```

##### waybackpack
```
pip install waybackpack
```

```
waybackpack <url> --list
```

## Laboratory Usage

### Anthropometrics
Facial Recognition tool that checks a video feed to discern gender, emotion, nervousness for some sort of corellation.

##### Facetracker

`cd` into the `facetracker` directory. To run, install an http-server to serve the files locally from the project folder"

```
npm install http-server -g
```

To run:

```
http-server
```

This will open a webpage at `http://localhost:8080` with a facial recognition web app. Includes gender detection, emotion detection, and face masking (camoflauge?). Eye and blink tracking coming soon.


**TO-DO**

* integrate blinktracker, face deform, and ~~face substitution~~

### Media Mining
Scripts for scraping information from the web, to emulate mass surveillance techniques of the state in field research.

##### twitdiff
`twitdiff` is a folder of scripts to record a user's twitter followers and record changes over time. Add developer consumer key/secret and access control/secret keys to a file called `tconf`

```
python authtest.py
```

```
python followersdiff.py
```

the python script works better but hits API rate limits (FIXED!!!), the shell script can scrape more info but currently does not show differences (possible fix?)


##### emailcrawl

```
sh harvest.sh
```

##### sentiments

In the `sentiments` directory

```
hashtag_downloader.py '<topic>'   >    '<topic.json>'
```

```
sentiments.py <topic.json>
```

##### namefinder

TODO

##### backpack


```
sh backpack.sh help
```
Runs the command  `waybackpack <site> -d <out folder>`

```
find . -iname "*.html" | xargs diff -ry --from-file * | colordiff
```

```
find . -iname "*.html"
```

##### general tech cheat sheets
* [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
