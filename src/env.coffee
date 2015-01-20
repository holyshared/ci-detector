readOnly = (env, target) ->
  for key, value of env
    Object.defineProperty target, key, value: value

class Env
  constructor: (env) ->
    readOnly Object.create(env), @

module.exports = Env
