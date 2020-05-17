/* eslint-env mocha */

const path = require('path');
const generate = require('@gerhobbelt/markdown-it-testgen');


describe('markdown-it-abbr', function () {
  const md = require('@gerhobbelt/markdown-it')({ linkify: true })
              .use(require('../'));

  generate(path.join(__dirname, 'fixtures/abbr.txt'), md);
});
