var registry;

registry = require('./registry');

registry.register('travis-ci', require('./travis-ci'));

registry.register('drone-io', require('./drone-io'));

registry.register('circle-ci', require('./circle-ci'));

registry.register('codeship', require('./codeship'));

module.exports = registry;

//# sourceMappingURL=../../sourcemap/adaptor/index.js.map