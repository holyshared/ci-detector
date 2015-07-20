describe 'Codeship', ->
  beforeEach ->
    @env = fixtures.codeship
    @ci = new Codeship @env

  describe 'isCurrentEnv', ->
    it 'return true', ->
      expect(@ci.isCurrentEnv()).to.be.true

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
