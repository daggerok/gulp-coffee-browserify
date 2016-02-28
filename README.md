gulp-coffee-browserify [![build](https://travis-ci.org/daggerok/gulp-coffee-browserify.svg?branch=master)](https://travis-ci.org/daggerok/gulp-coffee-browserify)
=============

using gulp-coffee with browserify

```shell
npm test
npm run serve
```

or just

```shell
npm start
```

**note (for linux users)**

if you got such error

```shell
[21:23:51] 'watch' errored after 7.21 ms
[21:23:51] Error: watch /home/mak/code/test/js/gulp-coffee-browserify/src/js/ ENOSPC
    at exports._errnoException (util.js:856:11)
    at FSWatcher.start (fs.js:1313:19)
    at Object.fs.watch (fs.js:1341:11)
    at Gaze._watchDir (/home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/gaze.js:289:30)
    at /home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/gaze.js:358:10
    at iterate (/home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/helper.js:52:5)
    at Object.forEachSeries (/home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/helper.js:66:3)
    at Gaze._initWatched (/home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/gaze.js:354:10)
    at Gaze.add (/home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/gaze.js:177:8)
    at new Gaze (/home/mak/code/test/js/gulp-coffee-browserify/node_modules/gaze/lib/gaze.js:74:10)
```

fix it with next command

```shell
$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
fs.inotify.max_user_watches=524288
fs.inotify.max_user_watches = 524288
```
