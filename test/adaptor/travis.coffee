describe 'Travis', ->
  beforeEach ->
    @env = new Env fixtures.travis
    @travis = new Travis @env

  describe 'isCurrent', ->
    it 'return true', ->
      expect(@travis.isCurrent()).to.be.true

  describe 'branch', ->
    it 'return branch name', ->
      expect(@travis.branch).to.be.equal 'master'

  describe 'commit', ->
    it 'return commit hash value', ->
      expect(@travis.commit).to.be.equal '3f93f2e4ddcf5a216d314d507e8579e99b21c8fb'

  describe 'buildId', ->
    it 'return build id', ->
      expect(@travis.buildId).to.be.equal '1'

  describe 'buildNumber', ->
    it 'return build number', ->
      expect(@travis.buildNumber).to.be.equal '2'

  describe 'buildJobNumber', ->
    it 'return build job number', ->
      expect(@travis.buildJobNumber).to.be.equal '4'

  describe 'buildJobId', ->
    it 'return build job id', ->
      expect(@travis.buildJobId).to.be.equal '3'

  describe 'ci', ->
    context 'when CI=true' , ->
      beforeEach ->
        @env = new Env CI:'true'
        @travis = new Travis @env

      it 'return true', ->
        expect(@travis.ci).to.be.true

    context 'when CI=false' , ->
      beforeEach ->
        @env = new Env CI:'false'
        @travis = new Travis @env

      it 'return false', ->
        expect(@travis.ci).to.be.false

  describe 'current', ->
    context 'when TRAVIS=true' , ->
      beforeEach ->
        @env = new Env TRAVIS:'true'
        @travis = new Travis @env

      it 'return true', ->
        expect(@travis.current).to.be.true

    context 'when TRAVIS=false' , ->
      beforeEach ->
        @env = new Env TRAVIS:'false'
        @travis = new Travis @env

      it 'return false', ->
        expect(@travis.current).to.be.false
