import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreeenLayout;
  final Widget webScreeenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreeenLayout,
      required this.webScreeenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webScreeenLayout;
        } else {
          return mobileScreeenLayout;
        }
      },
    );
  }
}
