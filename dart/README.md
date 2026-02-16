# HMAC Generator API - Dart/Flutter Client

HMAC Generator creates Hash-based Message Authentication Codes for data integrity and authentication. Supports SHA-256, SHA-384, SHA-512, SHA-1, and MD5 algorithms.

[![pub package](https://img.shields.io/pub/v/apiverve_hmac.svg)](https://pub.dev/packages/apiverve_hmac)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HMAC Generator API](https://apiverve.com/marketplace/hmac?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_hmac: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_hmac/apiverve_hmac.dart';

void main() async {
  final client = HmacClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'message': 'Hello World',
      'secret': 'my-secret-key',
      'algorithm': 'sha256',
      'encoding': 'hex'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [HMAC Generator API](https://apiverve.com/marketplace/hmac?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/hmac](https://docs.apiverve.com/ref/hmac?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
