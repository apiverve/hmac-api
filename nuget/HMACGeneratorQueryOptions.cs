using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HMACGenerator
{
    /// <summary>
    /// Query options for the HMAC Generator API
    /// </summary>
    public class HMACGeneratorQueryOptions
    {
        /// <summary>
        /// The message to sign
        /// Example: Hello World
        /// </summary>
        [JsonProperty("message")]
        public string Message { get; set; }

        /// <summary>
        /// The secret key for HMAC generation
        /// Example: my-secret-key
        /// </summary>
        [JsonProperty("secret")]
        public string Secret { get; set; }

        /// <summary>
        /// Hash algorithm: sha256, sha384, sha512, sha1, md5
        /// Example: sha256
        /// </summary>
        [JsonProperty("algorithm")]
        public string Algorithm { get; set; }

        /// <summary>
        /// Output encoding: hex or base64
        /// Example: hex
        /// </summary>
        [JsonProperty("encoding")]
        public string Encoding { get; set; }
    }
}
