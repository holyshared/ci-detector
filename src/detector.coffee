Env = require './env'
adaptors = require './adaptor'

detector = (env) ->
  @env = new Env env
  detectAdaptor = null

  for name, Adaptor of adaptors
    adaptor = new Adaptor @env
    continue unless adaptor.current
    detectAdaptor = adaptor
    break
  detectAdaptor

module.exports = detector
