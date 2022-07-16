import 'package:flutter/material.dart';
import 'package:recipe_food/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SFProText",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange
        )
      ),
      home: SplashScreen(),
    );
  }
}
