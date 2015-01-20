module.exports.readOnly = (target, env) ->
  for key, value of env
    readOnlyValue = undefined
    readOnlyValue = env[value] if env[value] != undefined

    Object.defineProperty target, key, value: readOnlyValue
