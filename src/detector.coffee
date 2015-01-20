Env = require './env'

class Detector
  constructor: (env) ->
    @env = new Env env
  detect: ->
    @env

module.exports = Detector
