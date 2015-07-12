var registry;

registry = module.exports = {
  _adaptors: {},
  register: function(name, adaptor) {
    return this._adaptors[name] = adaptor;
  }
};

Object.defineProperty(registry, 'adaptors', {
  get: function() {
    return this._adaptors;
  }
});

//# sourceMappingURL=../../sourcemap/adaptor/registry.js.map