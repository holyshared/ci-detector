var Base, Jenkins, readOnly,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Base = require('./base');

readOnly = require('../util').readOnly;

Jenkins = (function(superClass) {
  extend(Jenkins, superClass);

  function Jenkins() {
    return Jenkins.__super__.constructor.apply(this, arguments);
  }

  Jenkins.prototype.isCurrentEnv = function() {
    return this.has('JENKINS_URL');
  };

  return Jenkins;

})(Base);

Object.defineProperty(Jenkins.prototype, 'name', {
  value: 'jenkins'
});

readOnly(Jenkins.prototype, {
  branch: 'GIT_BRANCH',
  commit: 'GIT_COMMIT',
  buildId: 'BUILD_ID',
  buildNumber: 'BUILD_NUMBER',
  buildJobId: 'BUILD_ID',
  buildJobNumber: 'BUILD_NUMBER'
});

module.exports = Jenkins;

//# sourceMappingURL=../../sourcemap/adaptor/jenkins.js.map