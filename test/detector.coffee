describe 'Detector', ->
  beforeEach ->
    @detector = new Detector(CI: 'true', TRAVIS: 'true')

  it 'return travis-ci enviroment object', ->
    @travis = @detector.detect()
    expect(@travis.name).to.be.equal 'travis'
