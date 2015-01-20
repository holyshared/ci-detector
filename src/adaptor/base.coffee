class Base
  constructor: (env) ->
    @env = env
  isMatch: ->
    @ci && @current

Object.defineProperty Base::, 'ci', get: ->
  if @env.CI == 'true' then true else false

module.exports = Base
