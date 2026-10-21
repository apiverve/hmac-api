# HMAC Generator API - Ruby Gem

HMAC Generator creates Hash-based Message Authentication Codes for data integrity and authentication. Supports SHA-256, SHA-384, SHA-512, SHA-1, and MD5 algorithms.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_hmac'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_hmac
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_hmac'

# Initialize the client
client = APIVerve::Hmac::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  message: "Hello World",
  secret: "my-secret-key",
  algorithm: "sha256",
  encoding: "hex"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ message: "Hello World", secret: "my-secret-key", algorithm: "sha256", encoding: "hex" })
  puts response["data"]
rescue APIVerve::Hmac::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Hmac::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Hmac::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "hmac": "2cd7c25025198d4458002ceb064ad37ccfbbe46650876d693f5e080bd954e449",
    "algorithm": "sha256",
    "encoding": "hex"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/hmac?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/hmac?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/hmac?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
