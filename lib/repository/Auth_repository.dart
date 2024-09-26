import 'package:dio/dio.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox_loginscreen.dart';
import 'package:flutter_application_3/Probox%20other/probox_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final Dio dio = Dio();
 
  Future<ConfirmationResponse> login({required String phone, required String code}) async {
    final Response response = await dio.post(
        'https://api.probox.uz/api/v1/clients/send-code',
        data: {"phone": phone, "mobile_code": code});final ConfirmationResponse users=ConfirmationResponse.fromJson(response.data);
return users;
   
  }
  Future<void> login2({required String token, required String code}) async {
   final SharedPreferences prefs = await SharedPreferences.getInstance();
     final Response response = await  dio
        .post("https://api.probox.uz/api/v1/clients/sign-in", data: {
      "token": token,
      "code": code,
    });await prefs.setString('token',token);response.data['data']['token']; 
  } 
  
}

