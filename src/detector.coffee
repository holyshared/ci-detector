Env = require './env'
adaptors = require './adaptor'
util = require 'util'

class Detector
  constructor: (env) ->
    @env = new Env env
  detect: ->
    detectAdaptor = null

    for name, Adaptor of adaptors
      adaptor = new Adaptor @env
      continue unless adaptor.isCurrent()
      detectAdaptor = adaptor

    detectAdaptor

module.exports = Detector
