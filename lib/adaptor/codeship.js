var Base, CI_NAME, Codeship, readOnly,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Base = require('./base');

readOnly = require('../util').readOnly;

CI_NAME = "codeship";

Codeship = (function(superClass) {
  extend(Codeship, superClass);

  function Codeship() {
    return Codeship.__super__.constructor.apply(this, arguments);
  }

  Codeship.prototype.isCurrentEnv = function() {
    if (!this.has('CI_NAME')) {
      false;
    }
    return this.get('CI_NAME') === CI_NAME;
  };

  return Codeship;

})(Base);

Object.defineProperty(Codeship.prototype, 'name', {
  value: CI_NAME
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