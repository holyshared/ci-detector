var Base;

Base = (function() {
  function Base(env) {
    this.env = env;
  }

  Base.prototype.isMatch = function() {
    return this.ci && this.current;
  };

  return Base;

})();

Object.defineProperty(Base.prototype, 'ci', {
  get: function() {
    if (this.env.CI === 'true') {
      return true;
    } else {
      return false;
    }
  }
});

module.exports = Base;

//# sourceMappingURL=../../sourcemap/adaptor/base.js.map