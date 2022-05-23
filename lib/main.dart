import 'package:flutter/material.dart';
import 'package:whats_app_ui/shared/utils/colors.dart';
import 'package:whats_app_ui/shared/layouts/responsive_layout.dart';
import 'package:whats_app_ui/views/mobile/screens/mobile_layout_screen.dart';
import 'package:whats_app_ui/views/web/screens/web_layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What\'sApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}
