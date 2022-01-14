# Knock Ruby library

Knock API access for applications written in Ruby.

## Documentation

See the documentation for Ruby usage examples.

## Installation

```bash
gem install knockapi
```

## Configuration

To use the library you must provide a secret API key, provided in the Knock dashboard.

You can set it as an environment variable:

```bash
KNOCK_API_KEY="sk_12345"
```

Or, you may set the key yourself in an initializer:

```ruby
# /config/initializers/knock.rb
Knock.key = 'sk_12345'
```

## Usage

### Identifying users

```ruby
require "knockapi"

Knock.key = "sk_12345"

Knock::Users.identify(
  id: "jhammond",
  data: {
    name: "John Hammond",
    email: "jhammond@ingen.net",
  }
)
```

### Sending notifies (triggering workflows)

```ruby
require "knockapi"

Knock.key = "sk_12345"

# The key of the workflow (from Knock dashboard)
Knock::Workflows.trigger(
  key: "dinosaurs-loose",
  # user id of who performed the action
  actor: "dnedry",
  # list of user ids for who should receive the notif
  recipients: ["jhammond", "agrant", "imalcolm", "esattler"],
  # data payload to send through
  data: {
    type: "trex",
    priority: 1,
  },
  # an optional key to provide to cancel a notify
  cancellation_key: trigger_alert.id,
)
```

### Retrieving users

```ruby
require "knockapi"

Knock.key = "sk_12345"

Knock::Users.get(id: "jhammond")
```

### Deleting users

```ruby
require "knockapi"

Knock.key = "sk_12345"

Knock::Users.delete(id: "jhammond")
```

### Preferences

```ruby
require "knockapi"
Knock.key = "sk_12345"

# Set an entire preference set
Knock::Users.set_preferences(
  user_id: "jhammond",
  channel_types: { email: true, sms: false },
  workflows: {
    'dinosaurs-loose': {
      channel_types: { email: false, in_app_feed: false }
    }
  }
)

# Get an entire preference set
Knock::Users.get_preferences(user_id: "jhammond")
```

### Getting and setting channel data

```ruby
require "knockapi"
Knock.key = "sk_12345"

# Set channel data for an APNS
Knock::Users.set_channel_data(
  id: "jhammond",
  channel_id: KNOCK_APNS_CHANNEL_ID,
  channel_data: {
    'tokens': [apns_token]
  }
)

# Get channel data for the APNS channel
Knock::Users.get_channel_data(user_id: "jhammond", channel_id: KNOCK_APNS_CHANNEL_ID)
```

### Cancelling workflows

```ruby
require "knockapi"
Knock.key = "sk_12345"

Knock::Workflows.cancel(
  key: "dinosaurs-loose",
  cancellation_key: trigger_alert.id,
  # Optionally, you can provide recipients to cancel for
  recipients: ["jhammond"]
)
```

### Signing JWTs

You can use the `jwt` gem to sign JWTs easily. You will need to generate an environment specific signing key, which you can find in the Knock dashboard.

If you're using a signing token you will need to pass this to your client to perform authentication. You can read more about [clientside authentication here](https://docs.knock.app/client-integration/authenticating-users).

```ruby
require 'jwt'

secret = ENV['KNOCK_SIGNING_KEY']
now = Time.now.to_i

payload = {
  # The subject of the token
  sub: 'jhammond',
  # When the token was issued
  iat: now,
  # Expire the token in 1 week
  exp: now + (24 * 7 * 3600)
}

JWT.encode(payload, secret, 'RS256')
```
