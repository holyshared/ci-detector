global.expect = require('chai').expect
global.detector = require '../lib/detector'
global.Env = require '../lib/env'
global.Travis = require '../lib/adaptor/travis'
global.Drone = require '../lib/adaptor/drone'

fixtures = {}
fixtures.travis = require './fixtures/travis'
fixtures.drone = require './fixtures/drone'

global.fixtures = fixtures
