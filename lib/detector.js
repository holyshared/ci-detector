var Detector, Env, adaptors, util;

Env = require('./env');

adaptors = require('./adaptor');

util = require('util');

Detector = (function() {
  function Detector(env) {
    this.env = new Env(env);
  }

  Detector.prototype.detect = function() {
    var Adaptor, adaptor, detectAdaptor, name;
    detectAdaptor = null;
    for (name in adaptors) {
      Adaptor = adaptors[name];
      adaptor = new Adaptor(this.env);
      if (!adaptor.isCurrent()) {
        continue;
      }
      detectAdaptor = adaptor;
    }
    return detectAdaptor;
  };

  return Detector;

})();

module.exports = Detector;

//# sourceMappingURL=../sourcemap/detector.js.map