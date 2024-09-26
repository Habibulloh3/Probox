import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox1.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox_appbar.dart';
import 'package:flutter_application_3/repository/Auth_repository.dart';

class ConfirmationScreen1 extends StatefulWidget {
  final String token;

  ConfirmationScreen1({required this.token, });

  @override
  _ConfirmationScreen1State createState() => _ConfirmationScreen1State();
}

class _ConfirmationScreen1State extends State<ConfirmationScreen1> {
  final TextEditingController _controller = TextEditingController();
  bool _isLoading = false;
  final AuthRepository _repository = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:NavBartoo(),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Введите код'),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _isLoading = true;
                });

                try {
                  await _repository.login2(
                    code: _controller.text, 
                    token: widget.token, 
                  );
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => PhoneList( )));
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
              child: _isLoading 
                ? CircularProgressIndicator() 
                : Text("Войти"),
            ),
          ],
        ),
      ),
    );
  }
}
