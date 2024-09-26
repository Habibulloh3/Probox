import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder shikilli'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Width: ${constraints.maxWidth}, Height: ${constraints.maxHeight}',
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}