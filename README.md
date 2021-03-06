# markdown-it-abbr

[![Build Status](https://img.shields.io/travis/GerHobbelt/markdown-it-abbr/master.svg?style=flat)](https://travis-ci.org/GerHobbelt/markdown-it-abbr)
[![NPM version](https://img.shields.io/npm/v/@gerhobbelt/markdown-it-abbr.svg?style=flat)](https://www.npmjs.org/package/@gerhobbelt/markdown-it-abbr)
[![Coverage Status](https://img.shields.io/coveralls/GerHobbelt/markdown-it-abbr/master.svg?style=flat)](https://coveralls.io/r/GerHobbelt/markdown-it-abbr?branch=master)

> Abbreviation (`<abbr>`) tag plugin for [markdown-it](https://github.com/markdown-it/markdown-it) markdown parser.

__v1.+ requires `markdown-it` v4.+, see changelog.__

Markup is based on [php markdown extra](https://michelf.ca/projects/php-markdown/extra/#abbr) definition, but without multiline support.

Markdown:

```
*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium
The HTML specification
is maintained by the W3C.
```

HTML:

```html
<p>The <abbr title="Hyper Text Markup Language">HTML</abbr> specification
is maintained by the <abbr title="World Wide Web Consortium">W3C</abbr>.</p>
```

## Install

node.js, browser:

```bash
npm install @gerhobbelt/markdown-it-abbr --save
```

## Use

```js
var md = require('@gerhobbelt/markdown-it')()
            .use(require('@gerhobbelt/markdown-it-abbr'));

md.render(/*...*/); // See examples above
```

### Pass a JSON list of abbr definitions

```js
var abbrDefList = {
    "HTML": "Hyper Text Markup Language",
    "W3C": "World Wide Web Consortium"
};

var md = require('markdown-it')()
            .use(require('markdown-it-abbr'), abbrDefList);

md.render(/*...*/) // see example above
```

The list will be merged with the reference style abbreviation definitions like 
`*[HTML]: Hyper Text Markup Language` 
inside the markdown files (file definitions overwrite existing list definitions 
by default). 
To let list definitions overwrite existing definitions in the markdown file 
instead, pass a third argument `listPriorsFile` with `true`:

```js
var md = require('markdown-it')()
            .use(require('markdown-it-abbr'), abbrDefList, true);
```


_Differences in browser._ If you load script directly into the page, without
package system, module will add itself globally as `window.markdownitAbbr`.


## License

[MIT](https://github.com/GerHobbelt/markdown-it-abbr/LICENSE)
