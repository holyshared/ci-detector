describe 'environment', ->
  describe 'constructor', ->
    beforeEach ->
      @env = environment(foo: 'foo', bar: 'bar')
    it 'has readonly property', ->
      @env.foo = 'bar'
      expect(@env.foo).to.be.equal 'foo'

      @env.bar = 'foo'
      expect(@env.bar).to.be.equal 'bar'
