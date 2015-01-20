var reader;

reader = function(name) {
  return function() {
    var readOnlyValue;
    readOnlyValue = null;
    if (this.env[name] !== void 0) {
      readOnlyValue = this.env[name];
    }
    return readOnlyValue;
  };
};

module.exports.readOnly = function(target, env) {
  var key, value, _results;
  _results = [];
  for (key in env) {
    value = env[key];
    _results.push(Object.defineProperty(target, key, {
      get: reader(value)
    }));
  }
  return _results;
};

//# sourceMappingURL=../sourcemap/util.js.map