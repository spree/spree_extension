# Spree <%= human_name %>

This is a <%= human_name %> extension for [Spree Commerce](https://spreecommerce.org), an open source e-commerce platform built with Ruby on Rails.

Requires Spree 6.0 or later.

## Installation

1. Add this extension to your Gemfile with this line:

    ```bash
    bundle add <%= file_name %>
    ```

2. Run the install generator to copy and run the extension's migrations

    ```bash
    bin/rails g <%= file_name %>:install
    ```

3. Restart your server

## Developing

An extension is backend code only: models, migrations, Store and Admin API endpoints, permissions, workflow hooks and event subscribers.

| Part of the feature | Where it lives |
|---|---|
| Models, migrations, business logic | `app/models`, `app/services`, `db/migrate` |
| API endpoints | `app/controllers/spree/api/v3/{store,admin}`, `app/serializers/spree/api/v3`, `config/routes.rb` |
| Permission scopes, workflow hooks, registries | `config/initializers/spree.rb` |
| Decorators, `additional_permitted_attributes`, subscribers | `lib/<%= file_name %>/engine.rb` |
| Admin screens | A [dashboard plugin](https://spreecommerce.org/docs/developer/dashboard/plugins/overview) — scaffold one with `npx @spree/cli plugin new <%= file_name.delete_prefix('spree_').tr('_', '-') %>` |
| Storefront pages | Your storefront application, through `@spree/sdk` |

See [Creating a Spree extension](https://spreecommerce.org/docs/developer/contributing/creating-an-extension) for a walkthrough.

1. Create a dummy app

    ```bash
    bundle update
    bundle exec rake test_app
    ```

    Run this again whenever you add a migration.

2. Add your new code
3. Run tests

    ```bash
    bundle exec rspec
    ```

To develop against a local checkout of Spree, point `SPREE_PATH` at the `spree` directory of the monorepo:

```bash
SPREE_PATH=../spree/spree bundle update
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require '<%= file_name %>/factories'
```

## Releasing a new version

```shell
bundle exec gem bump -p -t
bundle exec gem release
```

For more options please see [gem-release README](https://github.com/svenfuchs/gem-release)

## Contributing

If you'd like to contribute, please take a look at the
[instructions](CONTRIBUTING.md) for installing dependencies and crafting a good
pull request.
