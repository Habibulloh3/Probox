import 'package:flutter/material.dart';
import 'package:flutter_application_3/Responsive/ResponseWidget.dart';


class ResponsiveScreen2 extends StatefulWidget {
  const ResponsiveScreen2({super.key});

  @override
  State<ResponsiveScreen2> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(child: Container(color: Colors.green,)),
      body: ResponsiveWidget(
        webChild: Text("Bu Web app"),
        planshetChild: Text("Bu pLanshet"),
        phone: Text("Bu telefon"),
      ),
    );
  }
}