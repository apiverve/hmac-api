/// Response models for the HMAC Generator API.

/// API Response wrapper.
class HmacResponse {
  final String status;
  final dynamic error;
  final HmacData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HmacResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HmacResponse.fromJson(Map<String, dynamic> json) => HmacResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HmacData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
