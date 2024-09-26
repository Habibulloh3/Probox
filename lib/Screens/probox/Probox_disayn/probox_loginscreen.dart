import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox_appbar.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/confirmation_screen1.dart';
import 'package:flutter_application_3/Probox%20other/probox_model.dart';
import 'package:flutter_application_3/repository/Auth_repository.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _isLoading = false;
  final AuthRepository _repository = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NavBartoo(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Введите номер'),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _isLoading = true;
                });
                try {
                  final ConfirmationResponse token =await _repository.login(phone:_controller.text, code: "");
                  print(token);
                  setState(() {
                    _isLoading=false;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ConfirmationScreen1(token: token.data.token,
                         )));
                  setState(() {
                    _isLoading = false;
                  });
                } on DioException catch (e) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Text(
                          e.response?.data.toString() ?? "Ошибка подключения"),
                    ),
                  );
                } finally {
                  setState(() {
                    _isLoading = false;
                  });
                }
              },
              child: Text('Войти'),
            ),
          ],
        ),
      ),
    );
  }
}
