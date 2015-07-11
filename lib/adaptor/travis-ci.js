var Base, TravisCI, readOnly,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Base = require('./base');

readOnly = require('../util').readOnly;

TravisCI = (function(superClass) {
  extend(TravisCI, superClass);

  function TravisCI() {
    return TravisCI.__super__.constructor.apply(this, arguments);
  }

  return TravisCI;

})(Base);

Object.defineProperty(TravisCI.prototype, 'name', {
  value: 'travis-ci'
});

Object.defineProperty(TravisCI.prototype, 'current', {
  get: function() {
    if (this.env.TRAVIS === 'true') {
      return true;
    } else {
      return false;
    }
  }
});

readOnly(TravisCI.prototype, {
  branch: 'TRAVIS_BRANCH',
  commit: 'TRAVIS_COMMIT',
  buildId: 'TRAVIS_BUILD_ID',
  buildNumber: 'TRAVIS_BUILD_NUMBER',
  buildJobId: 'TRAVIS_JOB_ID',
  buildJobNumber: 'TRAVIS_JOB_NUMBER'
});

module.exports = TravisCI;

//# sourceMappingURL=../../sourcemap/adaptor/travis-ci.js.map