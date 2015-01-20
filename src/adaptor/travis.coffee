Base = require('./base')
readOnly = require('../util').readOnly

class Travis extends Base

Object.defineProperty Travis::, 'name', value: 'travis'
Object.defineProperty Travis::, 'current', get: ->
  if @env.TRAVIS == 'true' then true else false

readOnly Travis::, {
  branch: 'TRAVIS_BRANCH',
  commit: 'TRAVIS_COMMIT',
  buildId: 'TRAVIS_BUILD_ID' 
  buildNumber: 'TRAVIS_BUILD_NUMBER'
  buildJobId: 'TRAVIS_JOB_ID'
  buildJobNumber: 'TRAVIS_JOB_NUMBER'
}

module.exports = Travis
