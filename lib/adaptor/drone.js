var Base, Drone, readOnly,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Base = require('./base');

readOnly = require('../util').readOnly;

Drone = (function(_super) {
  __extends(Drone, _super);

  function Drone() {
    return Drone.__super__.constructor.apply(this, arguments);
  }

  return Drone;

})(Base);

Object.defineProperty(Drone.prototype, 'name', {
  value: 'drone'
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