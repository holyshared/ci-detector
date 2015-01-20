reader = (name) ->
  return ->
    readOnlyValue = null
    readOnlyValue = @env[name] if @env[name] != undefined
    readOnlyValue

module.exports.readOnly = (target, env) ->
  for key, value of env
    Object.defineProperty target, key, get: reader(value)
