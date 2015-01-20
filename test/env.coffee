Env = require '../lib/env'

describe 'Env', ->
  describe 'constructor', ->
    beforeEach ->
      @env = new Env(foo: 'foo', bar: 'bar')
    it 'has readonly property', ->
      @env.foo = 'bar'
      expect(@env.foo).to.be.equal 'foo'

      @env.bar = 'foo'
      expect(@env.bar).to.be.equal 'bar'
