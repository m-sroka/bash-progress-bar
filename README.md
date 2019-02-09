# README #

### What is this ###

* Simple progress bar for bash

![samples intro images](https://raw.githubusercontent.com/m-sroka/bash-progress-bar/master/samples_intro.png)

### How do I get set up? ###
1. Clone repository
2. `chmod +x progressbar`
3. Add it to `$PATH` 
4. Run it: `progressbar 40%`


### How do I use it ###
```
> ./progressbar -h 

usage: progress-bar [VALUE], VALUE percentage value, e.g. 10%, 50%, 100%, 110%

  -h help

  -l long output - allow more than 100%
  -s [SIZE], SIZE number of ■ showed when value is 100 (default: 10)
  -w [CHARACTER], CHARACTER characted that is being shown as progress bar tile (default: ■)
  -a append numeric value after progress bar
  -c [COLOR] black|red|green|blue|brown|yellow|white

```
or pipe:


`echo 20 | progressbar -c red`

### Sample usage ###
![samples images](https://raw.githubusercontent.com/m-sroka/bash-progress-bar/master/samples.png)
