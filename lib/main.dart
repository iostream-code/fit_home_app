import 'package:fit_home_app/pages/layout/layout_page.dart';
import 'package:flutter/material.dart';
import 'package:fit_home_app/pages/activity_page/activity_page.dart';
import 'package:fit_home_app/pages/home_page/home_page.dart';
import 'package:fit_home_app/pages/profile_page/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.redAccent,
          // brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const LayoutPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(title: 'Fit Home'),
      //   '/activity': (context) => const ActivityPage(title: 'Fit Activity'),
      //   '/profile': (context) => const ProfilePage(),
      // },
    );
  }
}
