Base = require('./base')
readOnly = require('../util').readOnly

CI_NAME = "codeship"

class Codeship extends Base
  isCurrentEnv: ->
    if @env.CI_NAME == CI_NAME then true else false

Object.defineProperty Codeship::, 'name', value: CI_NAME

readOnly Codeship::, {
  branch: 'CI_BRANCH'
  commit: 'CI_COMMIT_ID'
  buildId: 'CI_BUILD_NUMBER'
  buildNumber: 'CI_BUILD_NUMBER'
  buildJobId: 'CI_BUILD_NUMBER'
  buildJobNumber: 'CI_BUILD_NUMBER'
}

module.exports = Codeship
