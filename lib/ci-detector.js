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
    return this._adaptors[name] = adaptor;
  },
  lookup: function(env) {
    var Adaptor, adaptor, detectAdaptor, envReader, name, ref;
    envReader = readOnly(Object.create(env), {});
    ref = this.adaptors;
    for (name in ref) {
      Adaptor = ref[name];
      adaptor = new Adaptor(envReader);
      if (!adaptor.current) {
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