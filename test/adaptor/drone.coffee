describe 'Drone', ->
  beforeEach ->
    @env = new Env CI:'true', DRONE:'true'
    @drone = new Drone @env

  describe 'isCurrent', ->
    it 'return true', ->
      expect(@drone.isCurrent()).to.be.true

  describe 'ci', ->
    context 'when CI=true' , ->
      beforeEach ->
        @env = new Env CI:'true'
        @drone = new Drone @env

      it 'return true', ->
        expect(@drone.ci).to.be.true

    context 'when CI=false' , ->
      beforeEach ->
        @env = new Env CI:'false'
        @drone = new Drone @env

      it 'return false', ->
        expect(@drone.ci).to.be.false

  describe 'current', ->
    context 'when DRONE=true' , ->
      beforeEach ->
        @env = new Env DRONE:'true'
        @drone = new Drone @env

      it 'return true', ->
        expect(@drone.current).to.be.true

    context 'when Drone=false' , ->
      beforeEach ->
        @env = new Env Drone:'false'
        @drone = new Drone @env

      it 'return false', ->
        expect(@drone.current).to.be.false
