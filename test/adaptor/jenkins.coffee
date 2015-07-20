describe 'Jenkins', ->
  beforeEach ->
    @env = fixtures.jenkins
    @jenkins = new Jenkins @env

  describe 'isCurrentEnv', ->
    context 'when jenkins enviroment', ->
      beforeEach ->
        @jenkins = new Jenkins JENKINS_URL: 'http://example.com'

      it 'return true', ->
        expect(@jenkins.isCurrentEnv()).to.be.true

    context 'when not jenkins enviroment', ->
      beforeEach ->
        @jenkins = new Jenkins {}

      it 'return false', ->
        expect(@jenkins.isCurrentEnv()).to.be.false

  describe 'branch', ->
    it 'return branch name', ->
      expect(@jenkins.branch).to.be.equal 'master'

  describe 'commit', ->
    it 'return commit hash value', ->
      expect(@jenkins.commit).to.be.equal '3f93f2e4ddcf5a216d314d507e8579e99b21c8fb'

  describe 'buildId', ->
    it 'return build id', ->
      expect(@jenkins.buildId).to.be.equal '1'

  describe 'buildNumber', ->
    it 'return build number', ->
      expect(@jenkins.buildNumber).to.be.equal '2'

  describe 'buildJobNumber', ->
    it 'return build job number', ->
      expect(@jenkins.buildJobNumber).to.be.equal '2'

  describe 'buildJobId', ->
    it 'return build job id', ->
      expect(@jenkins.buildJobId).to.be.equal '1'
