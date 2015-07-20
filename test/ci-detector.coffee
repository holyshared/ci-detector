describe 'ci-detector', ->
  describe 'isTravisCI', ->
    context 'when travis enviroment', ->
      it 'return true', ->
        expect(detector.isTravisCI(CI: 'true', TRAVIS: 'true')).to.be.true
    context 'when not travis enviroment', ->
      it 'return false', ->
        expect(detector.isTravisCI({})).to.be.false

  describe 'isCircleCI', ->
    context 'when circle-ci enviroment', ->
      it 'return true', ->
        expect(detector.isCircleCI(CI: 'true', CIRCLECI: 'true')).to.be.true
    context 'when not circle-ci enviroment', ->
      it 'return false', ->
        expect(detector.isCircleCI({})).to.be.false

  describe 'isDroneIO', ->
    context 'when drone.io enviroment', ->
      it 'return true', ->
        expect(detector.isDroneIO(CI: 'true', DRONE: 'true')).to.be.true
    context 'when not drone.io enviroment', ->
      it 'return false', ->
        expect(detector.isDroneIO({})).to.be.false

  describe 'isCodeship', ->
    context 'when codeship enviroment', ->
      it 'return true', ->
        expect(detector.isCodeship(CI_NAME: "codeship")).to.be.true
    context 'when not codeship enviroment', ->
      it 'return false', ->
        expect(detector.isCodeship({})).to.be.false

  describe 'isJenkins', ->
    context 'when jenkins enviroment', ->
      it 'return true', ->
        expect(detector.isJenkins(JENKINS_URL: "http://example.com")).to.be.true
    context 'when not jenkins enviroment', ->
      it 'return false', ->
        expect(detector.isJenkins({})).to.be.false

  describe 'lookup', ->
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

    context 'when jenkins enviroment', ->
      beforeEach ->
        @ci = detector.lookup JENKINS_URL: "http://example.com"

      it 'return jenkins enviroment object', ->
        expect(@ci.name).to.be.equal 'jenkins'
