# sensorship_lab
Our proposed lab brings together our respective work in digital ethnography and design interventions, which explore surveillance, choreographies of power and the making of a policed state. Our lab is a space for mutual provocations between technologies of surveying and ethnographic ways of seeing. This provides ethnographic practitioners a glimpse into automated investigation techniques employed by the state. These techniques are often used to inform researchers, journalists, and activists seeking to witness events in the digital age. How can ethnographers engage these tools to augment an ethnographic output? How can ethnographers engage these tools to create collaborative outputs with their interlocutors and communities? 

Our proposal will take the form of a makerspace / design lab wherein ongoing technology training sessions will be held for ethnographic practitioners interested in getting hands on experience with the tools and techniques of surveillance. This provides ethnographic practitioners a glimpse into automated investigation techniques employed by the state [oppressors]. These techniques are often used to inform researchers, journalists, and activists seeking to witness events in the digital age. How can ethnographers engage these tools to augment an ethnographic output? How can ethnographers engage these tools to create collaborative outputs with their interlocutors and communities? 

### automated investigation

Tools and techniques for mining information from everyday activity. (fix this bullshit)


## Installation

### Brew
Install homebrew for OS X
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install numpy scipy watch
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

If this doesn't work, we can use the system's `easy_install` with:
```
sudo easy_install pip
```

### Open CV
```
brew tap homebrew/science
brew install opencv3 --HEAD
```

### Open BR
Using the already "tapped" `homebrew/science` package, run
```
brew install openbr
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

#### eyetracker

`cd` into the `eyetrackr` directory and run:
```
npm i
```
and then:
```
gulp
```
This will open a webpage at `http://localhost:3000` with blink counting web app.

#### clmtrackr

The folder `clmtrackr` is the basis for video recognition app with gender and emotion detection, as well as masking. CUSTOMIZE THIS!

to run, install an http-server to serve the files locally from the project folder"
```
npm install http-server -g
```

then run `http-server`, and navigate to `http://localhost:3000` in your browser.


### Forensic Harvesting
Scripts for scraping information from the web, to emulate mass surveillance techniques of the state in field research.

#### twitdiff
`twitdiff` is a folder of scripts to record a user's twitter followers and record changes over time.

```
sh twitdiff.sh
```

and

```
python followersdiff.py
```

the python script works better but hits API rate limits (need to fix), the shell script can scrape more info but currently does not show differences (possible fix?)



### dscout
Ask if it's ok to include this tool? Ask if it's allowed to be "open-sourced"
#
#### ~~theHarvester~~
#### [Face Tracker / Obfuscator](https://auduno.github.io/clmtrackr/docs/reference.html)
#### Face Database
#### ~~Scraper?~~
#### ~~Sniffer?~~
#### ~~[TweetTracking](https://github.com/scotch-io/react-tweets)~~


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
