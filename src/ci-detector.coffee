readOnly = (env, target) ->
  for key, value of env
    Object.defineProperty target, key, value: value
  target

registry = module.exports = {
  _adaptors: {}

  register: (name, adaptor) ->
    @_adaptors[name] = adaptor

  lookup: (env) ->
    envReader = readOnly Object.create(env), {}

    for name, Adaptor of @adaptors
      adaptor = new Adaptor envReader
      continue unless adaptor.isCurrentEnv()
      detectAdaptor = adaptor
      break
    detectAdaptor
}

Object.defineProperty registry, 'adaptors', get: ->
  @_adaptors

adaptors = require './adaptor'

for name, adaptor of adaptors
  registry.register name, adaptor
