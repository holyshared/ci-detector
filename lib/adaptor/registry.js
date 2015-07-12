var registry;

registry = module.exports = {
  _adaptors: {},
  register: function(name, adaptor) {
    return this._adaptors[name] = adaptor;
  },
  lookup: function(env) {
    var Adaptor, adaptor, detectAdaptor, name, ref;
    ref = this.adaptors;
    for (name in ref) {
      Adaptor = ref[name];
      adaptor = new Adaptor(env);
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

//# sourceMappingURL=../../sourcemap/adaptor/registry.js.map