Env = require '../../lib/env'
Travis = require '../../lib/adaptor/travis'

describe 'Travis', ->
  beforeEach ->
    @env = new Env CI:'true', TRAVIS:'true'
    @travis = new Travis @env

  describe 'isCurrent', ->
    it 'return true', ->
      expect(@travis.isCurrent()).to.be.true

  describe 'ci', ->
    context 'when CI=true' , ->
      beforeEach ->
        @env = new Env CI:'true'
        @travis = new Travis @env

      it 'return true', ->
        expect(@travis.ci).to.be.true
    context 'when CI=false' , ->
      beforeEach ->
        @env = new Env CI:'false'
        @travis = new Travis @env

      it 'return false', ->
        expect(@travis.ci).to.be.false

  describe 'current', ->
    context 'when TRAVIS=true' , ->
      beforeEach ->
        @env = new Env TRAVIS:'true'
        @travis = new Travis @env

      it 'return true', ->
        expect(@travis.current).to.be.true

    context 'when TRAVIS=false' , ->
      beforeEach ->
        @env = new Env TRAVIS:'false'
        @travis = new Travis @env

      it 'return false', ->
        expect(@travis.current).to.be.false
