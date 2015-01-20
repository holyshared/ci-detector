global.expect = require('chai').expect
global.detector = require '../lib/detector'
global.Env = require '../lib/env'
global.Travis = require '../lib/adaptor/travis'
global.Drone = require '../lib/adaptor/drone'
global.Circle = require '../lib/adaptor/circle'
global.Codeship = require '../lib/adaptor/codeship'

fixtures = {}
fixtures.travis = require './fixtures/travis'
fixtures.drone = require './fixtures/drone'
fixtures.circle = require './fixtures/circle'
fixtures.codeship = require './fixtures/codeship'

global.fixtures = fixtures
