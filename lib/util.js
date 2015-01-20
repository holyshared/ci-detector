module.exports.readOnly = function(target, env) {
  var key, readOnlyValue, value, _results;
  _results = [];
  for (key in env) {
    value = env[key];
    readOnlyValue = void 0;
    if (env[value] !== void 0) {
      readOnlyValue = env[value];
    }
    _results.push(Object.defineProperty(target, key, {
      value: readOnlyValue
    }));
  }
  return _results;
};

//# sourceMappingURL=../sourcemap/util.js.map