registry = module.exports = {
  _adaptors: {}

  register: (name, adaptor) ->
    @_adaptors[name] = adaptor
}

Object.defineProperty registry, 'adaptors', get: ->
  @_adaptors
