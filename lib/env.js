var Env, readOnly;

readOnly = function(env, target) {
  var key, value, _results;
  _results = [];
  for (key in env) {
    value = env[key];
    _results.push(Object.defineProperty(target, key, {
      value: value
    }));
  }
  return _results;
};

Env = (function() {
  function Env(env) {
    readOnly(Object.create(env), this);
  }

  return Env;

})();

module.exports = Env;

//# sourceMappingURL=../sourcemap/env.js.map