var Env, adaptors, detector;

Env = require('./env');

adaptors = require('./adaptor');

detector = function(env) {
  var Adaptor, adaptor, detectAdaptor, name, ref;
  this.env = new Env(env);
  detectAdaptor = null;
  ref = adaptors.adaptors;
  for (name in ref) {
    Adaptor = ref[name];
    adaptor = new Adaptor(this.env);
    if (!adaptor.current) {
      continue;
    }
    detectAdaptor = adaptor;
    break;
  }
  return detectAdaptor;
};

module.exports = detector;

//# sourceMappingURL=../sourcemap/detector.js.map