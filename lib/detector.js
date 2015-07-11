var Env, adaptors, detector;

Env = require('./env');

adaptors = require('./adaptor');

detector = function(env) {
  var Adaptor, adaptor, detectAdaptor, name;
  this.env = new Env(env);
  detectAdaptor = null;
  for (name in adaptors) {
    Adaptor = adaptors[name];
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