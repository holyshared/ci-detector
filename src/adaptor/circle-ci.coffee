Base = require('./base')
readOnly = require('../util').readOnly

class CircleCI extends Base
  isCurrentEnv: ->
    @ci && @current

Object.defineProperty CircleCI::, 'name', value: 'circle-ci'
Object.defineProperty CircleCI::, 'current', get: ->
  if @env.CIRCLECI == 'true' then true else false

readOnly CircleCI::, {
  branch: 'CIRCLE_BRANCH',
  commit: 'CIRCLE_SHA1',
  buildId: 'CIRCLE_BUILD_NUM'
  buildNumber: 'CIRCLE_BUILD_NUM'
  buildJobId: 'CIRCLE_BUILD_NUM'
  buildJobNumber: 'CIRCLE_BUILD_NUM'
}

module.exports = CircleCI
