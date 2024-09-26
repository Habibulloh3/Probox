import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget webChild;
  final Widget planshetChild;
  final Widget phone;

  const ResponsiveWidget({super.key, required this.webChild, required this.planshetChild, required this.phone});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      final double maxWidth = boxConstraints.maxWidth;
      if (maxWidth >= 1100) {
        return webChild;
      } else if (maxWidth >= 650) {
        return planshetChild;
      } else {
        return phone;
      }
    });
  }
}