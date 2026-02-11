# Spree Extension

[![Gem Version](https://badge.fury.io/rb/spree_extension.svg)](https://badge.fury.io/rb/spree_extension)

CLI tool for generating and managing Spree Commerce extensions.

## Installation

```bash
gem install spree_extension
```

## Usage

### Create a new extension

```bash
spree-extension create my_extension
```

This creates a `spree_my_extension` directory with a complete extension scaffold including engine setup, tests, CI configuration, and more.

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

For more information on developing Spree extensions, see the [Spree Developer Documentation](https://docs.spreecommerce.org/developer).

## License

Spree Extension is released under the [MIT License](LICENSE.md).
