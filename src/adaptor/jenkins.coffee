Base = require('./base')
readOnly = require('../util').readOnly

class Jenkins extends Base
  isCurrentEnv: ->
    @has('JENKINS_URL')

Object.defineProperty Jenkins::, 'name', value: 'jenkins'

readOnly Jenkins::, {
  branch: 'GIT_BRANCH'
  commit: 'GIT_COMMIT'
  buildId: 'BUILD_ID'
  buildNumber: 'BUILD_NUMBER'
  buildJobId: 'BUILD_ID'
  buildJobNumber: 'BUILD_NUMBER'
}

module.exports = Jenkins
