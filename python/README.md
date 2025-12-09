HMAC Generator API
============

HMAC Generator creates Hash-based Message Authentication Codes for data integrity and authentication. Supports SHA-256, SHA-384, SHA-512, SHA-1, and MD5 algorithms.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [HMAC Generator API](https://apiverve.com/marketplace/api/hmac)

---

## Installation
	pip install apiverve-hmacgenerator

---

## Configuration

Before using the hmac API client, you have to setup your account and obtain your API Key.  
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Usage

The HMAC Generator API documentation is found here: [https://docs.apiverve.com/api/hmac](https://docs.apiverve.com/api/hmac).  
You can find parameters, example responses, and status codes documented here.

### Setup

```
# Import the client module
from apiverve_hmacgenerator.apiClient import HmacAPIClient

# Initialize the client with your APIVerve API key
api = HmacAPIClient("[YOUR_API_KEY]")
```

---


### Perform Request
Using the API client, you can perform requests to the API.

###### Define Query

```
query = { "message": "Hello World", "secret": "my-secret-key", "algorithm": "sha256", "encoding": "hex" }
```

###### Simple Request

```
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```
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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.