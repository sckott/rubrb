rubrb
=====

[![Build Status](https://api.travis-ci.org/sckott/rubrb.png)](https://travis-ci.org/sckott/rubrb)

`rubrb` does stuff

## Changes

For changes see the [Changelog][changelog]

## API

* `/test` - `Rubrb.test()`

## Install

### Release version

```
gem install rubrb
```

### Development version

```
git clone git@github.com:sckott/rubrb.git
cd rubrb
rake install
```

## Examples

### Use in a Ruby repl

Search works by DOI

```ruby
require 'rubrb'
rubrb.test(file: 'mystuff')
```

### Use on the CLI

The command line tool `rubrb` should be available after you install

```
~$ rubrb
Commands:
  rubrb help [COMMAND]  # Describe available commands or one specific command
  rubrb test [file]     # Run tests for a file
```

```
# A single DOI
~$ rubrb test 'tests/testthat/test-config-fxns.R'
config fxns: ........

DONE ===========================================================================
```

## Meta

* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
* License: MIT

[changelog]: https://github.com/sckott/rubrb/blob/master/CHANGELOG.md
