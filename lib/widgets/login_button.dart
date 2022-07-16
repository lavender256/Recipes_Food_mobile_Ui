import 'package:flutter/material.dart';
import 'package:recipe_food/screens/home_screen.dart';
import 'package:recipe_food/screens/main_screen.dart';
import 'package:recipe_food/screens/nav_screen.dart';
class LoginButton extends StatelessWidget {
  final bool isSign;
  final String title;

  LoginButton({this.isSign = false, this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavScreen())),
      child: Container(
        width: size.width * .8,
        height: size.height * .07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: isSign ?  Color(0xffF5895A) : Colors.white),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: isSign ? Colors.white : Colors.black,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
