ci-detector
================================

[![npm version](https://badge.fury.io/js/ci-detector.svg)](http://badge.fury.io/js/ci-detector)
[![Build Status](https://travis-ci.org/holyshared/ci-detector.svg?branch=develop)](https://travis-ci.org/holyshared/ci-detector)
[![Test Coverage](https://codeclimate.com/github/holyshared/ci-detector/badges/coverage.svg)](https://codeclimate.com/github/holyshared/ci-detector)
[![Code Climate](https://codeclimate.com/github/holyshared/ci-detector/badges/gpa.svg)](https://codeclimate.com/github/holyshared/ci-detector)
[![Dependency Status](https://gemnasium.com/holyshared/ci-detector.svg)](https://gemnasium.com/holyshared/ci-detector)

Usage
-----------------------------------------

If you pass an object of environment variable in the argument, it automatically detects the environment.  
You do not need to worry about the difference of environment variables of ci server.

```javascript
var util = require('util');
var detector = require('ci-detector');
var env = detector.lookup(process.env);
util.log(env.name); //travis-ci
util.log(env.branch); //master
util.log(env.commit); //1d3b5371ef1851caf256773efb9deb9e27875272
```

Check the environment
-----------------------------------------

You can check the environment as follows.  
Supported method isTravisCI, isCircleCI, isDroneIO, isCodeship, isJenkins.

```javascript
var util = require('util');
var detector = require('ci-detector');

console.log(detector.isTravisCI(process.env)); //true
console.log(detector.isCircleCI(process.env)); //false
console.log(detector.isDroneIO(process.env)); //false
console.log(detector.isCodeship(process.env)); //false
console.log(detector.isJenkins(process.env)); //false
```

Access to environment variables
-----------------------------------------

You can check the environment variable in the **has** method.  
To get the environment variables you can use the **get** method.

```javascript
var util = require('util');
var detector = require('ci-detector');
var env = detector.lookup(process.env);

if (env.has('CI', 'CIRCLECI')) {
  util.log(env.get('CI')); //true
  util.log(env.get('CIRCLECI')); //true
}
```

Support ci services
-----------------------------------------
* [Travis CI](https://travis-ci.org/)
* [Drone.IO](https://drone.io/)
* [CircleCI](https://circleci.com/)
* [Codeship](https://codeship.com)

Enviroment properties
-----------------------------------------

* branch - the branch currently being built
* commit - the commit hash currently being built
* buildId - the current build id
* buildNumber - the current build number
* buildJobId - the current build job id
* buildJobNumber - the current build job number
