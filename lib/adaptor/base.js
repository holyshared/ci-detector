var Base,
  slice = [].slice;

Base = (function() {
  function Base(env) {
    this.env = env;
  }

  Base.prototype.isCurrentEnv = function() {
    return false;
  };

  Base.prototype.has = function() {
    var i, key, keys, len;
    keys = 1 <= arguments.length ? slice.call(arguments, 0) : [];
    for (i = 0, len = keys.length; i < len; i++) {
      key = keys[i];
      if (this.env[key] === void 0) {
        return false;
      }
    }
    return true;
  };

  Base.prototype.get = function(key) {
    if (!this.has(key)) {
      return false;
    }
    return this.env[key];
  };

  return Base;

})();

module.exports = Base;

//# sourceMappingURL=../../sourcemap/adaptor/base.js.map