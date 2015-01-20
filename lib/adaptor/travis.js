var Base, Travis, readOnly,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Base = require('./base');

readOnly = require('../util').readOnly;

Travis = (function(_super) {
  __extends(Travis, _super);

  function Travis() {
    return Travis.__super__.constructor.apply(this, arguments);
  }

  return Travis;

})(Base);

Object.defineProperty(Travis.prototype, 'name', {
  value: 'travis'
});

Object.defineProperty(Travis.prototype, 'current', {
  get: function() {
    if (this.env.TRAVIS === 'true') {
      return true;
    } else {
      return false;
    }
  }
});

readOnly(Travis.prototype, {
  branch: 'TRAVIS_BRANCH',
  commit: 'TRAVIS_COMMIT',
  buildId: 'TRAVIS_BUILD_ID',
  buildNumber: 'TRAVIS_BUILD_NUMBER',
  buildJobId: 'TRAVIS_JOB_ID',
  buildJobNumber: 'TRAVIS_JOB_NUMBER'
});

module.exports = Travis;

//# sourceMappingURL=../../sourcemap/adaptor/travis.js.map