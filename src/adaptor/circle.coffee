Base = require('./base')
readOnly = require('../util').readOnly

class Circle extends Base

Object.defineProperty Circle::, 'name', value: 'circle'
Object.defineProperty Circle::, 'current', get: ->
  if @env.CIRCLECI == 'true' then true else false

readOnly Circle::, {
  branch: 'CIRCLE_BRANCH',
  commit: 'CIRCLE_SHA1',
  buildId: 'CIRCLE_BUILD_NUM' 
  buildNumber: 'CIRCLE_BUILD_NUM'
  buildJobId: 'CIRCLE_BUILD_NUM'
  buildJobNumber: 'CIRCLE_BUILD_NUM'
}

module.exports = Circle
