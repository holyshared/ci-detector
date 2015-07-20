global.expect = require('chai').expect
global.detector = require '../lib/ci-detector'
global.TravisCI = require '../lib/adaptor/travis-ci'
global.DroneIO = require '../lib/adaptor/drone-io'
global.CircleCI = require '../lib/adaptor/circle-ci'
global.Codeship = require '../lib/adaptor/codeship'
global.Jenkins = require '../lib/adaptor/jenkins'

fixtures = {}
fixtures.travisCI = require './fixtures/travis-ci'
fixtures.droneIO = require './fixtures/drone-io'
fixtures.circleCI = require './fixtures/circle-ci'
fixtures.codeship = require './fixtures/codeship'
fixtures.jenkins = require './fixtures/jenkins'

global.fixtures = fixtures
