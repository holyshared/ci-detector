var adaptors, detector, environment;

environment = require('./env');

adaptors = require('./adaptor');

detector = function(env) {
  var Adaptor, adaptor, detectAdaptor, name, ref;
  this.env = environment(env);
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