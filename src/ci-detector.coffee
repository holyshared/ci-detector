registry = module.exports = {
  _adaptors: {}

  register: (name, adaptor) ->
    @_adaptors[name] = adaptor

  lookup: (env) ->
    for name, Adaptor of @adaptors
      adaptor = new Adaptor env
      continue unless adaptor.current
      detectAdaptor = adaptor
      break
    detectAdaptor
}

Object.defineProperty registry, 'adaptors', get: ->
  @_adaptors

adaptors = require './adaptor'

for name, adaptor of adaptors
  registry.register name, adaptor
