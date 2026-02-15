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
        /// </summary>
        [JsonProperty("message")]
        public string Message { get; set; }

        /// <summary>
        /// The secret key for HMAC generation
        /// </summary>
        [JsonProperty("secret")]
        public string Secret { get; set; }

        /// <summary>
        /// Hash algorithm to use
        /// </summary>
        [JsonProperty("algorithm")]
        public string Algorithm { get; set; }

        /// <summary>
        /// Output encoding format
        /// </summary>
        [JsonProperty("encoding")]
        public string Encoding { get; set; }
    }
}
