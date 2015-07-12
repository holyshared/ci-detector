describe 'ci-detector', ->
  context 'when travis enviroment', ->
    beforeEach ->
      @travis = detector.lookup(CI: 'true', TRAVIS: 'true')

    it 'return travis-ci enviroment object', ->
      expect(@travis.name).to.be.equal 'travis-ci'

  context 'when drone.io enviroment', ->
    beforeEach ->
      @drone = detector.lookup(CI: 'true', DRONE: 'true')

    it 'return drone.io enviroment object', ->
      expect(@drone.name).to.be.equal 'drone.io'

  context 'when circle-ci enviroment', ->
    beforeEach ->
      @ci = detector.lookup CI: 'true', CIRCLECI: 'true'

    it 'return circle-ci enviroment object', ->
      expect(@ci.name).to.be.equal 'circle-ci'

  context 'when codeship enviroment', ->
    beforeEach ->
      @ci = detector.lookup CI:"true", CI_NAME: "codeship"

    it 'return codeship enviroment object', ->
      expect(@ci.name).to.be.equal 'codeship'
