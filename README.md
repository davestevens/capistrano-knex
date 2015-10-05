# Capistrano::knex

[knex.js](http://knexjs.org) migration support for Capistrano 3.x

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-knex', github: 'davestevens/capistrano-knex'
```

And then execute:

    $ bundle

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/knex'
```

This will run a `migrate:latest` after `deploy:updated` as part of Capistrano's
default deploy, or can be run in isolation with `cap production knex:latest`

### Tasks

| Command                | Description                                    |
| ---------------------- | ---------------------------------------------- |
| `knex:latest`          | Rollback the last set of migrations performed. |
| `knex:rollback`        | Run all migrations that have not yet been run. |
| `knex:current_version` | View the current version for the migration.    |
| `knex:seed`            | Run seed files.                                |

### Configuration

| Variable             | Default |
| -------------------- | ------- |
| `knex_roles`         | `:all`  |
| `knex_env_variables` | `{}`    |
| `knex_binary`        | `:knex` |

### Example

For my staging server I define the following variables:

```ruby
set :knex_env_variables, { NODE_ENV: 'staging' }
set :knex_binary, './node_modules/.bin/knex'
```

`NODE_ENV` is used by the `knexfile` to define which configuration to load and use, I don't have `knex` install globally to I point to the binary within the `node_modules` directory.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
