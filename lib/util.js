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
  var key, results, value;
  results = [];
  for (key in env) {
    value = env[key];
    results.push(Object.defineProperty(target, key, {
      get: reader(value)
    }));
  }
  return results;
};

//# sourceMappingURL=../sourcemap/util.js.map