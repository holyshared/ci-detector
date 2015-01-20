var Detector, Env;

Env = require('./env');

Detector = (function() {
  function Detector(env) {
    this.env = new Env(env);
  }

  Detector.prototype.detect = function() {
    return this.env;
  };

  return Detector;

})();

module.exports = Detector;

//# sourceMappingURL=../sourcemap/detector.js.map