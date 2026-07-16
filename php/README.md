# HMAC Generator API - PHP Package

HMAC Generator creates Hash-based Message Authentication Codes for data integrity and authentication. Supports SHA-256, SHA-384, SHA-512, SHA-1, and MD5 algorithms.

## Installation

Install via Composer:

```bash
composer require apiverve/hmac
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Hmac\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'message' => 'Hello World',
    'secret' => 'my-secret-key',
    'algorithm' => 'sha256',
    'encoding' => 'hex'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Hmac\Client;
use APIVerve\Hmac\Exceptions\APIException;
use APIVerve\Hmac\Exceptions\ValidationException;

try {
    $response = $client->execute(['message' => 'Hello World', 'secret' => 'my-secret-key', 'algorithm' => 'sha256', 'encoding' => 'hex']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/hmac?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/hmac?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/hmac?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
