readOnly = (env, target) ->
  for key, value of env
    Object.defineProperty target, key, value: value
  target

module.exports = (env) ->
  readOnly Object.create(env), {}
