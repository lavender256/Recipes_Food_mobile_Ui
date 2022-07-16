import 'package:flutter/material.dart';
import 'package:recipe_food/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Color(0xffe7eefb),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(
              height: size.height * .2,
            ),
            Container(
              width: size.width,
              height: size.height * .3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://i.postimg.cc/tTVXh2Nq/img-onboarding.png"))),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Text(
              "Sed do eiusmod tempor\n   incididunt ut labore",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: size.width * .06),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Text(
              "At vero eos et et iusto\n   odio dignissimos",
              style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * .05),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            LoginButton(title: "Sign Up",isSign: true,),
            SizedBox(
              height: size.height * .02,
            ),
            LoginButton(title: "Log in",)
          ],
        ),
      ),
    );
  }
}
