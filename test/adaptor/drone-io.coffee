describe 'DroneIO', ->
  beforeEach ->
    @env = fixtures.droneIO
    @drone = new DroneIO @env

  describe 'isCurrentEnv', ->
    context 'when drone.io enviroment', ->
      beforeEach ->
        @drone = new DroneIO DRONE: 'true'

      it 'return true', ->
        expect(@drone.isCurrentEnv()).to.be.true

    context 'when not drone.io enviroment', ->
      beforeEach ->
        @drone = new DroneIO {}

      it 'return false', ->
        expect(@drone.isCurrentEnv()).to.be.false

  describe 'branch', ->
    it 'return branch name', ->
      expect(@drone.branch).to.be.equal 'master'

  describe 'commit', ->
    it 'return commit hash value', ->
      expect(@drone.commit).to.be.equal '3f93f2e4ddcf5a216d314d507e8579e99b21c8fb'

  describe 'buildId', ->
    it 'return build id', ->
      expect(@drone.buildId).to.be.equal '1'

  describe 'buildNumber', ->
    it 'return build number', ->
      expect(@drone.buildId).to.be.equal '1'

  describe 'buildJobNumber', ->
    it 'return build job number', ->
      expect(@drone.buildId).to.be.equal '1'

  describe 'buildJobId', ->
    it 'return build job id', ->
      expect(@drone.buildId).to.be.equal '1'
