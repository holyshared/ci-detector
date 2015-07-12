class Base
  constructor: (env) ->
    @env = env
  isCurrentEnv: ->
    false

Object.defineProperty Base::, 'ci', get: ->
  if @env.CI == 'true' then true else false

module.exports = Base
