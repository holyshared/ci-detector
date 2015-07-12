Base = require('./base')
readOnly = require('../util').readOnly

class TravisCI extends Base
  isCurrentEnv: ->
    @ci && @current

Object.defineProperty TravisCI::, 'name', value: 'travis-ci'
Object.defineProperty TravisCI::, 'current', get: ->
  if @env.TRAVIS == 'true' then true else false

readOnly TravisCI::, {
  branch: 'TRAVIS_BRANCH',
  commit: 'TRAVIS_COMMIT',
  buildId: 'TRAVIS_BUILD_ID'
  buildNumber: 'TRAVIS_BUILD_NUMBER'
  buildJobId: 'TRAVIS_JOB_ID'
  buildJobNumber: 'TRAVIS_JOB_NUMBER'
}

module.exports = TravisCI
