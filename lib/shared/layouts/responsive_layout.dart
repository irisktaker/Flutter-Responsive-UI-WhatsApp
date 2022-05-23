import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobileScreenLayout,
    required this.webScreenLayout,
    Key? key,
  }) : super(key: key);

  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 900) {
          // WEB SCREEN VIEW
          return webScreenLayout;
        } else {
          // TABLET SCREEN 600
          // MOBILE SCREEN VIEW
          return mobileScreenLayout;
        }
      },
    );
  }
}
