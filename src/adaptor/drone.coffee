#Support?
#DRONE_REPO_SLUG
#DRONE_BUILD_URL
#DRONE_BUILD_DIR

readOnly = require('../util').readOnly

class Drone
  constructor: (env) ->
    @env = env
  isCurrent: ->
    @ci && @current

Object.defineProperty Drone::, 'ci', get: ->
  if @env.CI == 'true' then true else false

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
