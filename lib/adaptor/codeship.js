var Base, CI_NAME, Codeship, readOnly,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Base = require('./base');

readOnly = require('../util').readOnly;

CI_NAME = "codeship";

Codeship = (function(_super) {
  __extends(Codeship, _super);

  function Codeship() {
    return Codeship.__super__.constructor.apply(this, arguments);
  }

  return Codeship;

})(Base);

Object.defineProperty(Codeship.prototype, 'name', {
  value: CI_NAME
});

Object.defineProperty(Codeship.prototype, 'current', {
  get: function() {
    if (this.env.CI_NAME === CI_NAME) {
      return true;
    } else {
      return false;
    }
  }
});

readOnly(Codeship.prototype, {
  branch: 'CI_BRANCH',
  commit: 'CI_COMMIT_ID',
  buildId: 'CI_BUILD_NUMBER',
  buildNumber: 'CI_BUILD_NUMBER',
  buildJobId: 'CI_BUILD_NUMBER',
  buildJobNumber: 'CI_BUILD_NUMBER'
});

module.exports = Codeship;

//# sourceMappingURL=../../sourcemap/adaptor/codeship.js.map