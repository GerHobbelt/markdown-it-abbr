# 1.0.4-21 (2020/7/26)

## Features

- add arguments to supply a json list of abbreviation definitions
  ([abbda623](https://github.com/GerHobbelt/markdown-it-abbr/commit/abbda623))

## Testing

- simplify testgen call to its original form
  ([42221a52](https://github.com/GerHobbelt/markdown-it-abbr/commit/42221a52))


# 1.0.4-20 (2020/7/6)

Maintenance release


# 1.0.4-19 (2020/7/3)

## Bug Fixes

- fixed assertion failure with latest testgen, which is stricter about its parameters than the previous releases.
  ([6e5f252b](https://github.com/GerHobbelt/markdown-it-abbr/commit/6e5f252b))


# 1.0.4-18 (2020/6/18)

## Bug Fixes

- fix TravisCI config
  ([627d7417](https://github.com/GerHobbelt/markdown-it-abbr/commit/627d7417))
  ([289aaea3](https://github.com/GerHobbelt/markdown-it-abbr/commit/289aaea3))
  ([e7f4d73f](https://github.com/GerHobbelt/markdown-it-abbr/commit/e7f4d73f))
  ([85ce0075](https://github.com/GerHobbelt/markdown-it-abbr/commit/85ce0075))

## Miscellaneous

- synced with other markdown-it plugins' tooling code; markdown-it-abbr is used as the general template for the others, while updates there are fed back into this repo.
  ([c33eefba](https://github.com/GerHobbelt/markdown-it-abbr/commit/c33eefba))


# 1.0.4-17 (2020/6/16)

Maintenance release


# 1.0.4-16 (2020/5/17)

## Bug Fixes

- Changes:
  - updated toolchain to use microbundle instead of rollup (which is used internally by microbundle)
  - microbundle now flattens and compiles the plugin code to ./dist/ in various JS language formats (see microbundle manual): adjusted the package.json main and module references accordingly.
  - microbundle obsoleted browserify, terser and minify as package dependencies.
  - adjusted lint config for microbundle use and added lint fixes via `npm run lintfix`
  ([9d9de8f0](https://github.com/GerHobbelt/markdown-it-abbr/commit/9d9de8f0))

## Miscellaneous

- Changes:
  - update getGlobalName tool: include support for microbundle: produce the global name produced by that package when this plugin is compiled using microbundle.
    ([c6cadb32](https://github.com/GerHobbelt/markdown-it-abbr/commit/c6cadb32))
  - updating the settings and toolchain files as we go along, updating all plugins.
    ([b48113ef](https://github.com/GerHobbelt/markdown-it-abbr/commit/b48113ef))


# 1.0.4-15 (2020/5/10)

Maintenance release


# 1.0.4-14 (2020/5/9)

Maintenance release


# 1.0.4-13 (2020/4/4)

## Bug Fixes

- fix for change in markdown-it: 'linkify' has been moved from the CORE rules set to the INLINE rule set, hence we must pick another item to reference, so as to land in the same rule slot as before.
  ([a463c75f](https://github.com/GerHobbelt/markdown-it-abbr/commit/a463c75f))

## Documentation

- tweaked README to point to this fork repo with the scoped package approach we'll be using from today.
  ([bf0f7cc6](https://github.com/GerHobbelt/markdown-it-abbr/commit/bf0f7cc6))


## Chore

- required dev packages
  ([e3ec1e82](https://github.com/GerHobbelt/markdown-it-abbr/commit/e3ec1e82))


# 1.0.4-12 (2017/11/4)

## Miscellaneous

- updated NPM packages & tweaks to correct for us using scoped packages.
  ([54b3ff55](https://github.com/GerHobbelt/markdown-it-abbr/commit/54b3ff55))


# 1.0.4-10 (2017/8/5)

## Testing

- synced build/env files with main project: TravisCI now will perform all build / test actions inside their test environment, so no need for reporting coverage analysis *twice*: once inside the test run and once after the test has completed successfully!
  ([9b403ae8](https://github.com/GerHobbelt/markdown-it-abbr/commit/9b403ae8))

## Miscellaneous

- tweak Makefile to make it easier transferrable to other plugin projects: generalizing the Makefile as much as possible.
  ([2bedca68](https://github.com/GerHobbelt/markdown-it-abbr/commit/2bedca68))


# 1.0.4-8 (2017/8/5)

Maintenance release


# 1.0.4-7 (2017/6/2)

Maintenance release


# 1.0.4-6 (2017/6/2)

## Bug Fixes

- Changes:
  - fix CRLF issues on all platforms (when doing development on multiple platforms, Makefiles tend to get screwed up under particular git conditions)
    ([c893255a](https://github.com/GerHobbelt/markdown-it-abbr/commit/c893255a))
  - fix TravisCI config and make task
    ([8abde54d](https://github.com/GerHobbelt/markdown-it-abbr/commit/8abde54d))

  - Fix regexp might get infinite loop
    
    which cause by alter the regex `lastIndex` in the function and fix by check if the `lastIndex` same as the regex index
    ([8687ca43](https://github.com/GerHobbelt/markdown-it-abbr/commit/8687ca43))

## Miscellaneous

- Changes:
  - regenerated library file (we don't care about the minified version, hence we don't pre-build that one any more; the `make minify` task is still available for those who want this, but generally everyone has their own post-production minification processes in place, which act at a different level than the single repo.)
    ([0ac88d9a](https://github.com/GerHobbelt/markdown-it-abbr/commit/0ac88d9a))
  - tweak TravisCI build config to mirror the config of the markdown-it repo, as we now have the same Makefile structure, etc.
    ([702c3838](https://github.com/GerHobbelt/markdown-it-abbr/commit/702c3838))
  - added `todo`, `clean` and `minify` tasks mirroring the markdown-it repo Makefile structure.
    ([40aebcde](https://github.com/GerHobbelt/markdown-it-abbr/commit/40aebcde))
  - update LICENSE copyright year
    ([67cde402](https://github.com/GerHobbelt/markdown-it-abbr/commit/67cde402))


# 1.0.4-5 (2017/4/25)

## Bug Fixes

- fixed ESLint error reports based on http://stackoverflow.com/questions/27732209/turning-off-eslint-rule-for-a-specific-line as the code is fine, just ESLint being pedantic
  ([04f61a28](https://github.com/GerHobbelt/markdown-it-abbr/commit/04f61a28))


# 1.0.4 (2016/8/31)

## Bug Fixes

- Do not process empty abbreviations
    
  Fix https://github.com/markdown-it/markdown-it-abbr/pull/6
    
  Fixed infinite loop caused by empty abbreviations like `*[]: foo`. Empty abbreviations are no longer parsed.
  ([e75fd256](https://github.com/GerHobbelt/markdown-it-abbr/commit/e75fd256))


# 1.0.3 (2016/1/5)

## Bug Fixes

- Fixed uc.micro use
  ([921e94c7](https://github.com/GerHobbelt/markdown-it-abbr/commit/921e94c7))


# 1.0.2 (2015/12/31)

Maintenance release
([676d08a9](https://github.com/GerHobbelt/markdown-it-abbr/commit/676d08a9))
([c7b8d654](https://github.com/GerHobbelt/markdown-it-abbr/commit/c7b8d654))


# 1.0.1 (2015/12/31)

## Bug Fixes

- Changes:
  - Resolved collision with `linkify-it`.
  - Extended list of start/stop punctuation characters to unicode ones.

  ([94396e64](https://github.com/GerHobbelt/markdown-it-abbr/commit/94396e64))


# 1.0.0 (2015/3/12)

## Bug Fixes

- Typo fix
  ([e6dfa987](https://github.com/GerHobbelt/markdown-it-abbr/commit/e6dfa987))
- Markdown-it 4.0.0 support. Use previous version for 2.x-3.x.
  ([17043b5c](https://github.com/GerHobbelt/markdown-it-abbr/commit/17043b5c))


# 0.1.0 (2015/1/4)

- First release.
  ([0ed34550](https://github.com/GerHobbelt/markdown-it-abbr/commit/0ed34550))
  ([762ef7be](https://github.com/GerHobbelt/markdown-it-abbr/commit/762ef7be))
  ([faf3449a](https://github.com/GerHobbelt/markdown-it-abbr/commit/faf3449a))


