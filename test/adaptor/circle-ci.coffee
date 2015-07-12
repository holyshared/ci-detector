describe 'CircleCI', ->
  beforeEach ->
    @env = environment fixtures.circleCI
    @ci = new CircleCI @env

  describe 'isMatch', ->
    it 'return true', ->
      expect(@ci.isMatch()).to.be.true

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


  describe 'ci', ->
    context 'when CI=true' , ->
      beforeEach ->
        @env = environment CI:'true'
        @ci = new CircleCI @env

      it 'return true', ->
        expect(@ci.ci).to.be.true

    context 'when CI=false' , ->
      beforeEach ->
        @env = environment CI:'false'
        @ci = new CircleCI @env

      it 'return false', ->
        expect(@ci.ci).to.be.false

  describe 'current', ->
    context 'when CIRCLECI=true' , ->
      beforeEach ->
        @env = environment CIRCLECI:'true'
        @ci = new CircleCI @env

      it 'return true', ->
        expect(@ci.current).to.be.true

    context 'when CIRCLECI=false' , ->
      beforeEach ->
        @env = environment CIRCLECI:'false'
        @ci = new CircleCI @env

      it 'return false', ->
        expect(@ci.current).to.be.false
