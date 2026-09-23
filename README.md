# Spree Extension

[![Gem Version](https://badge.fury.io/rb/spree_extension.svg)](https://badge.fury.io/rb/spree_extension)

CLI tool for generating and managing Spree Commerce extensions.

## Compatibility

| spree_extension | Spree |
|---|---|
| 2.x | 6.0+ |
| 1.x | 5.x |

To scaffold an extension for Spree 5, install the 1.x version: `gem install spree_extension -v '~> 1.0'`.

## Installation

```bash
gem install spree_extension
```

## Usage

### Create a new extension

```bash
spree-extension create my_extension
```

This creates a `spree_my_extension` directory with a complete extension scaffold: a Rails engine depending on `spree_core` and `spree_api`, directories for models, Store and Admin API controllers and serializers, services and event subscribers, an initializer for permission scopes and workflow hooks, a test setup based on [spree_dev_tools](https://github.com/spree/spree_dev_tools), and CI configuration.

An extension is backend code only. Admin screens for your extension are built as a [dashboard plugin](https://spreecommerce.org/docs/developer/dashboard/plugins/overview), scaffolded with:

```bash
npx @spree/cli plugin new my-extension
```

### Check version

```bash
spree-extension version
```

## After generating

```bash
cd spree_my_extension
bundle install
bundle exec rake test_app
bundle exec rspec
```

## Documentation

For a walkthrough of building an extension, see [Creating a Spree extension](https://spreecommerce.org/docs/developer/contributing/creating-an-extension).

## License

Spree Extension is released under the [MIT License](LICENSE.md).
