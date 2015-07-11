describe 'detector', ->
  context 'when travis enviroment', ->
    beforeEach ->
      @travis = detector(CI: 'true', TRAVIS: 'true')

    it 'return travis-ci enviroment object', ->
      expect(@travis.name).to.be.equal 'travis'

  context 'when drone enviroment', ->
    beforeEach ->
      @drone = detector(CI: 'true', DRONE: 'true')

    it 'return drone enviroment object', ->
      expect(@drone.name).to.be.equal 'drone'

  context 'when circle-ci enviroment', ->
    beforeEach ->
      @ci = detector CIRCLECI: 'true'

    it 'return circle-ci enviroment object', ->
      expect(@ci.name).to.be.equal 'circle-ci'
