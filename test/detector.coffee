describe 'Detector', ->
  beforeEach ->
    @detector = new Detector(CI: 'true', TRAVIS: 'true')

  it 'return travis-ci enviroment object', ->
    @travis = @detector.detect()
    expect(@travis.CI).to.be.equal 'true'
    expect(@travis.TRAVIS).to.be.equal 'true'
