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

Run a test by partial or full file name

```ruby
require 'rubrb'
Rubrb.test(file: 'config')
```

### Use on the CLI

The command line tool `rb` should be available after you install

```
~$ rubrb
Commands:
  rb help [COMMAND]  # Describe available commands or one specific command
  rb test [file]     # Run tests for a file or many
```

A single test

```
➜ rb test config
using:
  tests/testthat/test-config-fxns.R

config fxns: ........

DONE ===========================================================================
```

Many tests

```
➜ rb test config auth
using:
  tests/testthat/test-config-fxns.R
  tests/testthat/test-authentication.R

config fxns: ........

DONE ===========================================================================
authentication: ...................

DONE ===========================================================================
```

## Meta

* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
* License: MIT

[changelog]: https://github.com/sckott/rubrb/blob/master/CHANGELOG.md
