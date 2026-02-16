/// Response models for the HMAC Generator API.

/// API Response wrapper.
class HmacResponse {
  final String status;
  final dynamic error;
  final HmacData? data;

  HmacResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HmacResponse.fromJson(Map<String, dynamic> json) => HmacResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HmacData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the HMAC Generator API.

class HmacData {
  String? hmac;
  String? algorithm;
  String? encoding;

  HmacData({
    this.hmac,
    this.algorithm,
    this.encoding,
  });

  factory HmacData.fromJson(Map<String, dynamic> json) => HmacData(
      hmac: json['hmac'],
      algorithm: json['algorithm'],
      encoding: json['encoding'],
    );
}

class HmacRequest {
  String message;
  String secret;
  String? algorithm;
  String? encoding;

  HmacRequest({
    required this.message,
    required this.secret,
    this.algorithm,
    this.encoding,
  });

  Map<String, dynamic> toJson() => {
      'message': message,
      'secret': secret,
      if (algorithm != null) 'algorithm': algorithm,
      if (encoding != null) 'encoding': encoding,
    };
}
