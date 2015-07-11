var Env, readOnly;

readOnly = function(env, target) {
  var key, results, value;
  results = [];
  for (key in env) {
    value = env[key];
    results.push(Object.defineProperty(target, key, {
      value: value
    }));
  }
  return results;
};

Env = (function() {
  function Env(env) {
    readOnly(Object.create(env), this);
  }

  return Env;

})();

module.exports = Env;

//# sourceMappingURL=../sourcemap/env.js.map