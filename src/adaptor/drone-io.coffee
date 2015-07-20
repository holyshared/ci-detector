Base = require('./base')
readOnly = require('../util').readOnly

class DroneIO extends Base
  isCurrentEnv: ->
    return false unless @has('DRONE')
    @get('DRONE') == 'true'

Object.defineProperty DroneIO::, 'name', value: 'drone.io'

readOnly DroneIO::, {
  branch: 'DRONE_BRANCH',
  commit: 'DRONE_COMMIT',
  buildId: 'DRONE_BUILD_NUMBER'
  buildNumber: 'DRONE_BUILD_NUMBER'
  buildJobId: 'DRONE_BUILD_NUMBER'
  buildJobNumber: 'DRONE_BUILD_NUMBER'
}

module.exports = DroneIO
