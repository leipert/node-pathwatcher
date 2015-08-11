# Path Watcher Node Module [![t][ti]][t] [![a][ai]][a] [![w][wi]][w]

This package is a fork of [pathwatcher][pathwatcher]. Some of our users
experienced trouble installing pathwatcher because of runas
(compare [runas/#9][9], [runas/#11][11] or [markdown-preview-plus/#43][43]).

Runas is just needed in a rather small edge case on macosx, if write files and
the file is not accessible (compare [here][runas-ref]). We didn't write files
with pathwatcher, so we removed the usage of runas in this package.

If you do not use pathwatcher with writing capabilities, feel free to use this
package.

## Installing

```bash
npm install pathwatcher-without-runas
```

## Building

*   Clone the repository
*   Run `npm install` to install the dependencies
*   Run `npm test` to run the specs

## Using

```coffeescript
PathWatcher = require 'pathwatcher'
```

### PathWatcher.watch(filename, \[listener])

Watch for changes on `filename`, where `filename` is either a file or a
directory. The returned object is a PathWatcher.

The listener callback gets two arguments `(event, path)`. `event` is 'rename',
'delete' or 'change', and `path` is the path of the file which triggered the
event.

For directories, the 'change' event is emitted when a file or directory under
the watched directory got created or deleted. And the `PathWatcher.watch` is
not recursive, so changes of subdirectories under the watched directory would
not be detected.

### PathWatcher.close()

Stop watching for changes on the given `PathWatcher`.

[9]: https://github.com/atom/node-runas/issues/9
[11]: https://github.com/atom/node-runas/issues/11
[43]: https://github.com/Galadirith/markdown-preview-plus/issues/43
[45]: https://github.com/Galadirith/markdown-preview-plus/issues/45

[runas-ref]: https://github.com/atom/node-pathwatcher/blob/849e893fbe3a1f7d21b9c06318c1aa94330526a4/src/file.coffee#L317-L328

[pathwatcher]: (https://github.com/atom/node-pathwatcher)

[ai]: https://ci.appveyor.com/api/projects/status/4ws8m57yahqhkkb2/branch/master?svg=true
[a]: https://ci.appveyor.com/project/leipert/node-pathwatcher-without-runas

[ti]: https://travis-ci.org/leipert/node-pathwatcher-without-runas.svg?branch=master
[t]: https://travis-ci.org/leipert/node-pathwatcher-without-runas

[wi]: https://app.wercker.com/status/c8f03d83fd02af89cc233aea01edff61/s/master
[w]: https://app.wercker.com/project/bykey/c8f03d83fd02af89cc233aea01edff61
