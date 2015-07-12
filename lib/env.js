var readOnly;

readOnly = function(env, target) {
  var key, value;
  for (key in env) {
    value = env[key];
    Object.defineProperty(target, key, {
      value: value
    });
  }
  return target;
};

module.exports = function(env) {
  return readOnly(Object.create(env), {});
};

//# sourceMappingURL=../sourcemap/env.js.map