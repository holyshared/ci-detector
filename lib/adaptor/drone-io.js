var Base, DroneIO, readOnly,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Base = require('./base');

readOnly = require('../util').readOnly;

DroneIO = (function(superClass) {
  extend(DroneIO, superClass);

  function DroneIO() {
    return DroneIO.__super__.constructor.apply(this, arguments);
  }

  DroneIO.prototype.isCurrentEnv = function() {
    if (this.env.DRONE === 'true') {
      return true;
    } else {
      return false;
    }
  };

  return DroneIO;

})(Base);

Object.defineProperty(DroneIO.prototype, 'name', {
  value: 'drone.io'
});

readOnly(DroneIO.prototype, {
  branch: 'DRONE_BRANCH',
  commit: 'DRONE_COMMIT',
  buildId: 'DRONE_BUILD_NUMBER',
  buildNumber: 'DRONE_BUILD_NUMBER',
  buildJobId: 'DRONE_BUILD_NUMBER',
  buildJobNumber: 'DRONE_BUILD_NUMBER'
});

module.exports = DroneIO;

//# sourceMappingURL=../../sourcemap/adaptor/drone-io.js.map