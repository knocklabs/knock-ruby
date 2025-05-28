# Knock Ruby API library

The Knock Ruby library provides convenient access to the Knock REST API from any Ruby 3.2.0+ application. It ships with comprehensive types & docstrings in Yard, RBS, and RBI – [see below](https://github.com/knocklabs/knock-ruby#Sorbet) for usage with Sorbet. The standard library's `net/http` is used as the HTTP transport, with connection pooling via the `connection_pool` gem.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/knockapi).

The REST API documentation can be found on [docs.knock.app](https://docs.knock.app).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

<!-- x-release-please-start-version -->

```ruby
gem "knockapi", "~> 1.3.0"
```

<!-- x-release-please-end -->

## Usage

```ruby
require "bundler/setup"
require "knockapi"

knock = Knockapi::Client.new(
  api_key: ENV["KNOCK_API_KEY"] # This is the default and can be omitted
)

response = knock.workflows.trigger("dinosaurs-loose", recipients: ["dnedry"], data: {dinosaur: "triceratops"})

puts(response.workflow_run_id)
```

### Pagination

List methods in the Knock API are paginated.

This library provides auto-paginating iterators with each list response, so you do not have to request successive pages manually:

```ruby
page = knock.users.list

# Fetch single item from page.
user = page.entries[0]
puts(user.id)

# Automatically fetches more pages as needed.
page.auto_paging_each do |user|
  puts(user.id)
end
```

Alternatively, you can use the `#next_page?` and `#next_page` methods for more granular control working with pages.

```ruby
if page.next_page?
  new_page = page.next_page
  puts(new_page.entries[0].id)
end
```

### Handling errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `Knockapi::Errors::APIError` will be thrown:

```ruby
begin
  user = knock.users.get("dnedry")
rescue Knockapi::Errors::APIConnectionError => e
  puts("The server could not be reached")
  puts(e.cause)  # an underlying Exception, likely raised within `net/http`
rescue Knockapi::Errors::RateLimitError => e
  puts("A 429 status code was received; we should back off a bit.")
rescue Knockapi::Errors::APIStatusError => e
  puts("Another non-200-range status code was received")
  puts(e.status)
end
```

Error codes are as follows:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
knock = Knockapi::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
knock.users.get("dnedry", request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds. You can use the timeout option to configure or disable this:

```ruby
# Configure the default for all requests:
knock = Knockapi::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
knock.users.get("dnedry", request_options: {timeout: 5})
```

On timeout, `Knockapi::Errors::APITimeoutError` is raised.

Note that requests that time out are retried by default.

## Advanced concepts

### BaseModel

All parameter and response objects inherit from `Knockapi::Internal::Type::BaseModel`, which provides several conveniences, including:

1. All fields, including unknown ones, are accessible with `obj[:prop]` syntax, and can be destructured with `obj => {prop: prop}` or pattern-matching syntax.

2. Structural equivalence for equality; if two API calls return the same values, comparing the responses with == will return true.

3. Both instances and the classes themselves can be pretty-printed.

4. Helpers such as `#to_h`, `#deep_to_h`, `#to_json`, and `#to_yaml`.

### Making custom or undocumented requests

#### Undocumented properties

You can send undocumented parameters to any endpoint, and read undocumented response properties, like so:

Note: the `extra_` parameters of the same name overrides the documented parameters.

```ruby
user =
  knock.users.get(
    "dnedry",
    request_options: {
      extra_query: {my_query_parameter: value},
      extra_body: {my_body_parameter: value},
      extra_headers: {"my-header": value}
    }
  )

puts(user[:my_undocumented_property])
```

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a request, as seen in the examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints while retaining the benefit of auth, retries, and so on, you can make requests using `client.request`, like so:

```ruby
response = client.request(
  method: :post,
  path: '/undocumented/endpoint',
  query: {"dog": "woof"},
  headers: {"useful-header": "interesting-value"},
  body: {"hello": "world"}
)
```

### Concurrency & connection pooling

The `Knockapi::Client` instances are threadsafe, but are only are fork-safe when there are no in-flight HTTP requests.

Each instance of `Knockapi::Client` has its own HTTP connection pool with a default size of 99. As such, we recommend instantiating the client once per application in most settings.

When all available connections from the pool are checked out, requests wait for a new connection to become available, with queue time counting towards the request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

## Sorbet

This library provides comprehensive [RBI](https://sorbet.org/docs/rbi) definitions, and has no dependency on sorbet-runtime.

You can provide typesafe request parameters like so:

```ruby
knock.workflows.trigger("dinosaurs-loose", recipients: ["dnedry"], data: {dinosaur: "triceratops"})
```

Or, equivalently:

```ruby
# Hashes work, but are not typesafe:
knock.workflows.trigger("dinosaurs-loose", recipients: ["dnedry"], data: {dinosaur: "triceratops"})

# You can also splat a full Params class:
params = Knockapi::WorkflowTriggerParams.new(recipients: ["dnedry"], data: {dinosaur: "triceratops"})
knock.workflows.trigger("dinosaurs-loose", **params)
```

### Enums

Since this library does not depend on `sorbet-runtime`, it cannot provide [`T::Enum`](https://sorbet.org/docs/tenum) instances. Instead, we provide "tagged symbols" instead, which is always a primitive at runtime:

```ruby
# :exclude
puts(Knockapi::Users::FeedListItemsParams::Archived::EXCLUDE)

# Revealed type: `T.all(Knockapi::Users::FeedListItemsParams::Archived, Symbol)`
T.reveal_type(Knockapi::Users::FeedListItemsParams::Archived::EXCLUDE)
```

Enum parameters have a "relaxed" type, so you can either pass in enum constants or their literal value:

```ruby
# Using the enum constants preserves the tagged type information:
knock.users.feeds.list_items(
  archived: Knockapi::Users::FeedListItemsParams::Archived::EXCLUDE,
  # …
)

# Literal values are also permissible:
knock.users.feeds.list_items(
  archived: :exclude,
  # …
)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.2.0 or higher.

## Contributing

See [the contributing documentation](https://github.com/knocklabs/knock-ruby/tree/main/CONTRIBUTING.md).
