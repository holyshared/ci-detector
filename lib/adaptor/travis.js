var Travis, readOnly;

readOnly = require('../util').readOnly;

Travis = (function() {
  function Travis(env) {
    this.env = env;
  }

  Travis.prototype.isCurrent = function() {
    return this.ci && this.current;
  };

  return Travis;

})();

Object.defineProperty(Travis.prototype, 'ci', {
  get: function() {
    if (this.env.CI === 'true') {
      return true;
    } else {
      return false;
    }
  }
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