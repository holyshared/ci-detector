class Base
  constructor: (env) ->
    @env = env
  isCurrentEnv: ->
    false
  has: (keys...) ->
    for key in keys
      return false if @env[key] == undefined
    true
  get: (key) ->
    return false unless @has(key)
    @env[key]

module.exports = Base
