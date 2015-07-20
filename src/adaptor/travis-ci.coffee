Base = require('./base')
readOnly = require('../util').readOnly

class TravisCI extends Base
  isCurrentEnv: ->
    return false unless @has('TRAVIS')
    @get('TRAVIS') == 'true'

Object.defineProperty TravisCI::, 'name', value: 'travis-ci'

readOnly TravisCI::, {
  branch: 'TRAVIS_BRANCH',
  commit: 'TRAVIS_COMMIT',
  buildId: 'TRAVIS_BUILD_ID'
  buildNumber: 'TRAVIS_BUILD_NUMBER'
  buildJobId: 'TRAVIS_JOB_ID'
  buildJobNumber: 'TRAVIS_JOB_NUMBER'
}

module.exports = TravisCI
