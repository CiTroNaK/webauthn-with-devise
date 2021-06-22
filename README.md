# WebAuthn with Devise

[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

## Prerequisites

- [Ruby](https://www.ruby-lang.org/en/) - see the `.ruby-version` (hopefully latest)
- [PostgreSQL](https://www.postgresql.org/) - latest
- [Redis](https://redis.io/) - latest
- [overmind](https://github.com/DarthSim/overmind) - process manager (if you are not using Rubymine or similar)

## Setup

1. Pull down the app from version control
2. Make sure you have Postgres running
3. Make sure you have Redis running
4. `bin/setup`

## Running The App

1. `bin/run` or Rubymine build-in `Run` 

## Tests and CI

1. `bin/ci` contains all the tests and checks for the app
2. `tmp/test.log` will use the production logging format *not* the development one.

## Production
- All runtime configuration should be supplied in the UNIX environment
- Rails logging uses [lograge](https://github.com/roidrage/lograge). `bin/setup help` can tell you how to see this locally
