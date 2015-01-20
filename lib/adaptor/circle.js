var Base, Circle, readOnly,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Base = require('./base');

readOnly = require('../util').readOnly;

Circle = (function(_super) {
  __extends(Circle, _super);

  function Circle() {
    return Circle.__super__.constructor.apply(this, arguments);
  }

  return Circle;

})(Base);

Object.defineProperty(Circle.prototype, 'name', {
  value: 'circle'
});

Object.defineProperty(Circle.prototype, 'current', {
  get: function() {
    if (this.env.CIRCLECI === 'true') {
      return true;
    } else {
      return false;
    }
  }
});

readOnly(Circle.prototype, {
  branch: 'CIRCLE_BRANCH',
  commit: 'CIRCLE_SHA1',
  buildId: 'CIRCLE_BUILD_NUM',
  buildNumber: 'CIRCLE_BUILD_NUM',
  buildJobId: 'CIRCLE_BUILD_NUM',
  buildJobNumber: 'CIRCLE_BUILD_NUM'
});

module.exports = Circle;

//# sourceMappingURL=../../sourcemap/adaptor/circle.js.map