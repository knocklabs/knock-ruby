# Contributing

## Getting Started

1. Install [asdf](https://asdf-vm.com)
2. Install the asdf Ruby plugin

```bash
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git # Visit that repository to see installation prerequisites
```

3. Run `asdf install` to install the version of Ruby specified in the [.ruby-version](.ruby-version) file
4. Run `bundle install` to install the Ruby dependencies

## Running the tests

```bash
bundle exec rspec
```

## Running the linter

```bash
bundle exec rubocop
```

## Formatting

```bash
bundle exec rubocop -a
```
