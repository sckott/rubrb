rubrb
=====

[![Build Status](https://api.travis-ci.org/sckott/rubrb.png)](https://travis-ci.org/sckott/rubrb)

`rubrb` does stuff

## Changes

For changes see the [Changelog][changelog]

## API

* `/test` - `Rubrb.test()`
* `/check` - `Rubrb.check()`
* `/version` - `Rubrb.version()`
* `/revdeps` - `Rubrb.revdeps()`

## Install

Development version

```
gem install specific_install
gem specific_install https://github.com/sckott/rubrb.git
```

## Use in a Ruby repl

Run a test by partial or full file name

```ruby
require 'rubrb'
Rubrb.test(file: 'config')
```

## Use on the CLI

The command line tool `rb` should be available after you install

```
~$ rubrb
Commands:
  rb check           # Run R CMD Check
  rb help [COMMAND]  # Describe available commands or one specific command
  rb lst             # List test files
  rb revdeps         # List reverse dependencies
  rb test [file]     # Run tests for a file or many
  rb version         # Get current package version
```

<a href="https://asciinema.org/a/0jXePWCrovQ05PO3qW8gDtLGN" target="_blank"><img src="https://asciinema.org/a/0jXePWCrovQ05PO3qW8gDtLGN.png" /></a>

### test

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

### revdeps

```
➜  taxize git:(master) rb revdeps
using package: taxize
[1] "mapr"     "rbison"   "RNeXML"   "rnoaa"    "spocc"    "taxizedb" "onekp"
[8] "rotl"
```

## Meta

* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
* License: MIT

[changelog]: https://github.com/sckott/rubrb/blob/master/CHANGELOG.md
