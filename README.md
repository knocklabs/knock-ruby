# Knock Ruby API library

The Knock Ruby library provides convenient access to the Knock REST API from any Ruby 3.0.0+ application.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for the most recent release of this gem can be found [on RubyDoc](https://gemdocs.org/gems/knock/latest).

The underlying REST API documentation can be found on [docs.knock.app](https://docs.knock.app).

## Installation

To use this gem during the beta, install directly from GitHub with Bundler by adding the following to your application's `Gemfile`:

```ruby
gem "knock", git: "https://github.com/stainless-sdks/knock-ruby", branch: "main"
```

To fetch an initial copy of the gem:

```sh
bundle install
```

To update the version used by your application when updates are pushed to GitHub:

```sh
bundle update knock
```

## Usage

```ruby
require "bundler/setup"
require "knock"

knock = Knock::Client.new(
  bearer_token: "My Bearer Token" # defaults to ENV["KNOCK_API_KEY"]
)

response = knock.workflows.trigger(
  "dinosaurs-loose",
  data: {
    dinosaur: "triceratops"
  },
  recipients: ["dnedry"]
)

puts(response.workflow_run_id)
```

### Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `Knock::Error` will be thrown:

```ruby
begin
  user = knock.users.get("dnedry")
rescue Knock::Error => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >=500       | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
knock = Knock::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
knock.users.get("dnedry", request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds.

Timeouts are applied separately to the initial connection and the overall request time, so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
knock = Knock::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
knock.users.get("dnedry", request_options: {timeout: 5})
```

## Sorbet Support

This library is written with [Sorbet type definitions](https://sorbet.org/docs/rbi). However, there is no runtime dependency on the Sorbet runtime.

What this means is that while you can use Sorbet to type check your code statically, and benefit from the [Sorbet Language Server](https://sorbet.org/docs/lsp) in your editor, there is no runtime type checking and execution overhead from Sorbet.

Due to limitations with the Sorbet type system, where a method otherwise can take an instance of `Knock::BaseModel` class, you will need to use the `**` splat operator to pass the arguments:

```ruby
model = WorkflowTriggerParams.new(
  "dinosaurs-loose",
  data: {
    dinosaur: "triceratops"
  },
  recipients: ["dnedry"]
)

knock.workflows.trigger(**model)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.0.0 or higher.
