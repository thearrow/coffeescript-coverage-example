Coffeescript - Browserify - Karma - Coverage Example
------

An example repo showing an imperfect coffeescript + browserify + karma 
coverage example using the [browserify-istanbul](https://www.npmjs.org/package/browserify-istanbul) package.

Run `gulp cover` to generate coverage statistics and output html report in `coverage/`

Coffeescript is compiled to JS first, then JS is browserified and instrumented and fed to Karma.