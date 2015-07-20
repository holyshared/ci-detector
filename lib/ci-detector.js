var adaptor, adaptors, name, readOnly, registry;

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

registry = module.exports = {
  _adaptors: {},
  register: function(name, adaptor) {
    this._adaptors[name] = adaptor;
    return this['is' + name] = function(env) {
      return (new adaptor(env)).isCurrentEnv();
    };
  },
  lookup: function(env) {
    var Adaptor, adaptor, detectAdaptor, envReader, name, ref;
    envReader = readOnly(Object.create(env), {});
    ref = this.adaptors;
    for (name in ref) {
      Adaptor = ref[name];
      adaptor = new Adaptor(envReader);
      if (!adaptor.isCurrentEnv()) {
        continue;
      }
      detectAdaptor = adaptor;
      break;
    }
    return detectAdaptor;
  }
};

Object.defineProperty(registry, 'adaptors', {
  get: function() {
    return this._adaptors;
  }
});

adaptors = require('./adaptor');

for (name in adaptors) {
  adaptor = adaptors[name];
  registry.register(name, adaptor);
}

//# sourceMappingURL=../sourcemap/ci-detector.js.map