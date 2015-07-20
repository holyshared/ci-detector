var Base, CircleCI, readOnly,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Base = require('./base');

readOnly = require('../util').readOnly;

CircleCI = (function(superClass) {
  extend(CircleCI, superClass);

  function CircleCI() {
    return CircleCI.__super__.constructor.apply(this, arguments);
  }

  CircleCI.prototype.isCurrentEnv = function() {
    if (this.env.CIRCLECI === 'true') {
      return true;
    } else {
      return false;
    }
  };

  return CircleCI;

})(Base);

Object.defineProperty(CircleCI.prototype, 'name', {
  value: 'circle-ci'
});

readOnly(CircleCI.prototype, {
  branch: 'CIRCLE_BRANCH',
  commit: 'CIRCLE_SHA1',
  buildId: 'CIRCLE_BUILD_NUM',
  buildNumber: 'CIRCLE_BUILD_NUM',
  buildJobId: 'CIRCLE_BUILD_NUM',
  buildJobNumber: 'CIRCLE_BUILD_NUM'
});

module.exports = CircleCI;

//# sourceMappingURL=../../sourcemap/adaptor/circle-ci.js.map