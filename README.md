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

Or install it yourself as:

    $ gem install davestevens-capistrano-knex -s http://gems.github.com

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/knex'
```

This will run a `migrate:latest` after `deploy:updated` as part of Capistrano's
default deploy, or can be run in isolation with `cap production knex:migrate`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
