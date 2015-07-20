var Base;

Base = (function() {
  function Base(env) {
    this.env = env;
  }

  Base.prototype.isCurrentEnv = function() {
    return false;
  };

  return Base;

})();

module.exports = Base;

//# sourceMappingURL=../../sourcemap/adaptor/base.js.map