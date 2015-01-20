describe 'Drone', ->
  beforeEach ->
    @env = new Env fixtures.drone
    @drone = new Drone @env

  describe 'isMatch', ->
    it 'return true', ->
      expect(@drone.isMatch()).to.be.true

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


  describe 'ci', ->
    context 'when CI=true' , ->
      beforeEach ->
        @env = new Env CI:'true'
        @drone = new Drone @env

      it 'return true', ->
        expect(@drone.ci).to.be.true

    context 'when CI=false' , ->
      beforeEach ->
        @env = new Env CI:'false'
        @drone = new Drone @env

      it 'return false', ->
        expect(@drone.ci).to.be.false

  describe 'current', ->
    context 'when DRONE=true' , ->
      beforeEach ->
        @env = new Env DRONE:'true'
        @drone = new Drone @env

      it 'return true', ->
        expect(@drone.current).to.be.true

    context 'when DRONE=false' , ->
      beforeEach ->
        @env = new Env DRONE:'false'
        @drone = new Drone @env

      it 'return false', ->
        expect(@drone.current).to.be.false
