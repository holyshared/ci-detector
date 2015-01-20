var Drone, readOnly;

readOnly = require('../util').readOnly;

Drone = (function() {
  function Drone(env) {
    this.env = env;
  }

  Drone.prototype.isCurrent = function() {
    return this.ci && this.current;
  };

  return Drone;

})();

Object.defineProperty(Drone.prototype, 'ci', {
  get: function() {
    if (this.env.CI === 'true') {
      return true;
    } else {
      return false;
    }
  }
});

Object.defineProperty(Drone.prototype, 'current', {
  get: function() {
    if (this.env.DRONE === 'true') {
      return true;
    } else {
      return false;
    }
  }
});

readOnly(Drone.prototype, {
  branch: 'DRONE_BRANCH',
  commit: 'DRONE_COMMIT',
  buildId: 'DRONE_BUILD_NUMBER',
  buildNumber: 'DRONE_BUILD_NUMBER',
  buildJobId: 'DRONE_BUILD_NUMBER',
  buildJobNumber: 'DRONE_BUILD_NUMBER'
});

module.exports = Drone;

//# sourceMappingURL=../../sourcemap/adaptor/drone.js.map