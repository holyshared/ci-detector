environment = require './env'
adaptors = require './adaptor'

detector = (env) ->
  @env = environment(env)
  detectAdaptor = null

  for name, Adaptor of adaptors.adaptors
    adaptor = new Adaptor @env
    continue unless adaptor.current
    detectAdaptor = adaptor
    break
  detectAdaptor

module.exports = detector
