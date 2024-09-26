
class ConfirmationResponse {
  final bool success;
  final int status;
  final ApiData data;
  final String message;
  final List<dynamic> errors;

  ConfirmationResponse({
    required this.success,
    required this.status,
    required this.data,
    required this.message,
    required this.errors,
  });

  
  factory ConfirmationResponse.fromJson(Map<String, dynamic> json) {
    return ConfirmationResponse(
      success: json['success'],
      status: json['status'],
      data: ApiData.fromJson(json['data']),
      message: json['message'],
      errors: List<dynamic>.from(json['errors']),
    );
  }

  
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'status': status,
      'data': data.toJson(),
      'message': message,
      'errors': errors,
    };
  }
}

class ApiData {
  final String token;
  final String phone;

  ApiData({
    required this.token,
    required this.phone,
  });

  
  factory ApiData.fromJson(Map<String, dynamic> json) {
    return ApiData(
      token: json['token'],
      phone: json['phone'],
    );
  }

  
  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'phone': phone,
    };
  }
}
