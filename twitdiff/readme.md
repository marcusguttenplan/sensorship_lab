# social media harvesting

### social differencing
```
python followersdiff.py
```

### email crawler
```
sh harvest.sh
```

### username finder (TO DO)
```
sh recon.sh
```

### Sentiment Analysis
```
python hashtag_downloader.py <topic>
```
```
python sentiments.py <topic.json>
```

### waybackpack
```
waybackpack lapd.org -d lapd
cd lapd/
find . -iname "*.html" | xargs diff -ry --from-file *
```
