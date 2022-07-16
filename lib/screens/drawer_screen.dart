import 'package:flutter/material.dart';
import 'package:recipe_food/color.dart';
import 'package:recipe_food/widgets/drawer_option.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width*.1),
        width: size.width,
        height: size.height,
        color: mainColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: size.width*.5,
            height: size.height*.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/lavender.png"),fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: size.height*.05,),
            DrawerOption(title: "Setting",icon: Icons.settings,),
            DrawerOption(title: "Profile",icon: Icons.person,),
            DrawerOption(title: "Message",icon: Icons.messenger_outline,),
            DrawerOption(title: "Saved",icon: Icons.bookmark_border,),
            DrawerOption(title: "Hint",icon: Icons.settings,),
            SizedBox(height: size.height*.2,),
            DrawerOption(title: "Log out",icon: Icons.logout,),

          ],
        ),
      ),
    );
  }
}
