'use strict';


var path     = require('path');
var generate = require('@gerhobbelt/markdown-it-testgen');

/*eslint-env mocha*/

describe('markdown-it-abbr', function () {
  var md = require('@gerhobbelt/markdown-it')({ linkify: true })
              .use(require('../'));

  generate(path.join(__dirname, 'fixtures/abbr.txt'), md);
});
