# sensorship_lab
Our proposed lab brings together our respective work in digital ethnography and design interventions, which explore surveillance, choreographies of power and the making of a policed state. Our lab is a space for mutual provocations between technologies of surveying and ethnographic ways of seeing. This provides ethnographic practitioners a glimpse into automated investigation techniques employed by the state. These techniques are often used to inform researchers, journalists, and activists seeking to witness events in the digital age. How can ethnographers engage these tools to augment an ethnographic output? How can ethnographers engage these tools to create collaborative outputs with their interlocutors and communities? 

Our proposal will take the form of a makerspace / design lab wherein ongoing technology training sessions will be held for ethnographic practitioners interested in getting hands on experience with the tools and techniques of surveillance. This provides ethnographic practitioners a glimpse into automated investigation techniques employed by the state [oppressors]. These techniques are often used to inform researchers, journalists, and activists seeking to witness events in the digital age. How can ethnographers engage these tools to augment an ethnographic output? How can ethnographers engage these tools to create collaborative outputs with their interlocutors and communities? 

### automated investigation

Tools and techniques for mining information from everyday activity. (fix this bullshit)

* [Facetracker](#facetracker)
* [twitdiff](#twitdiff)
* [emailcrawl](#emailcrawl)
* [sentiments](#sentiments)
* [namefinder](#namefinder)
* [backpack](#backpack)

## Installation

**TO-DO**

* Get all of this installed on a clean Mac and Raspberry Pi to baseline requisites (Windows in the future).
* Primer for finding and using tools like this
* There are packages inside of the scripts that are required and might need to be sussed out


### Brew
Install homebrew for OS X
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Git
```
brew install git
```

### Node
```
brew install node
```

### Python
Brew will also install `python`, a programming language, and `pip`, python's package manager.

```
brew install python
```

### Open CV
```
brew tap homebrew/science
brew install opencv3 --HEAD
```

### Tweet Tracking
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

### waybackpack
```
pip install waybackpack
```

```
waybackpack <url> --list
```

## Laboratory Usage
### Anthropometrics
Facial Recognition tool that checks a video feed to discern gender, emotion, nervousness for some sort of corellation.

#### Facetracker

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

#### twitdiff
`twitdiff` is a folder of scripts to record a user's twitter followers and record changes over time.

```
sh twitdiff.sh
```

or

```
python followersdiff.py
```

the python script works better but hits API rate limits (FIXED!!!), the shell script can scrape more info but currently does not show differences (possible fix?)


#### emailcrawl

```
sh harvest.sh
```

#### sentiments

In the `sentiments` directory

```
hashtag_downloader.py <topic>
```

```
sentiments.py <topic.json>
```

#### namefinder

TODO

#### backpack


```
sh backpack.sh
```
Runs the command  `waybackpack <site> -d <out folder>`

```
find . -iname "*.html" | xargs diff -ry --from-file * | colordiff
```

```
find . -iname "*.html"
```


# Reference Links

##### facial recog stuff
* [save face to database](https://stackoverflow.com/questions/33140178/is-there-any-node-js-library-for-offline-facial-recognition-identification)
* [compare faces](https://stackoverflow.com/questions/21647573/use-opencv-and-node-to-compare-2-faces-for-similarity)
* [facebook photo tag clone](https://www.sitepoint.com/face-detection-nodejs-opencv/)
* [with openBR](http://openbiometrics.org/docs/tutorials/#face-recognition)
* [raspi cat tracker](http://www.girliemac.com/blog/2015/12/25/kittycam-raspberrypi-camera-cat-face-recog-nodejs/)
* [track those eyes](http://andrevenancio.com/eye-blink-detection/)
* [tweet image from webcame](https://github.com/lonekorean/diff-cam-feed)

##### scrapers
* [harvester (crawler)](https://github.com/TransparencyToolkit/Harvester)
* [metagoofil (metadata)](https://github.com/laramies/metagoofil)
* [harvester (real estate)](https://github.com/dayweek/harvester)
* [harvester (scraper)](https://github.com/blazaid/harvester)
* [twoolpy](https://github.com/karpathy/twoolpy)

##### general tech cheat sheets
* [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
