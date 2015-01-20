#Support?
#DRONE_REPO_SLUG
#DRONE_BUILD_URL
#DRONE_BUILD_DIR

Base = require('./base')
readOnly = require('../util').readOnly

class Drone extends Base

Object.defineProperty Drone::, 'name', value: 'drone'
Object.defineProperty Drone::, 'current', get: ->
  if @env.DRONE == 'true' then true else false

readOnly Drone::, {
  branch: 'DRONE_BRANCH',
  commit: 'DRONE_COMMIT',
  buildId: 'DRONE_BUILD_NUMBER' 
  buildNumber: 'DRONE_BUILD_NUMBER'
  buildJobId: 'DRONE_BUILD_NUMBER'
  buildJobNumber: 'DRONE_BUILD_NUMBER'
}

module.exports = Drone
