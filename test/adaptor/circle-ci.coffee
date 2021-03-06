describe 'CircleCI', ->
  beforeEach ->
    @env = fixtures.circleCI
    @ci = new CircleCI @env

  describe 'isCurrentEnv', ->
    context 'when circle-ci enviroment', ->
      beforeEach ->
        @ci = new CircleCI CIRCLECI: 'true'

      it 'return true', ->
        expect(@ci.isCurrentEnv()).to.be.true

    context 'when not circle-ci enviroment', ->
      beforeEach ->
        @ci = new CircleCI {}

      it 'return false', ->
        expect(@ci.isCurrentEnv()).to.be.false

  describe 'branch', ->
    it 'return branch name', ->
      expect(@ci.branch).to.be.equal 'master'

  describe 'commit', ->
    it 'return commit hash value', ->
      expect(@ci.commit).to.be.equal '3f93f2e4ddcf5a216d314d507e8579e99b21c8fb'

  describe 'buildId', ->
    it 'return build id', ->
      expect(@ci.buildId).to.be.equal '1'

  describe 'buildNumber', ->
    it 'return build number', ->
      expect(@ci.buildId).to.be.equal '1'

  describe 'buildJobNumber', ->
    it 'return build job number', ->
      expect(@ci.buildId).to.be.equal '1'

  describe 'buildJobId', ->
    it 'return build job id', ->
      expect(@ci.buildId).to.be.equal '1'
