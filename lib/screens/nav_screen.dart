import 'package:flutter/material.dart';
import 'package:recipe_food/color.dart';
import 'package:recipe_food/data/data.dart';
import 'package:recipe_food/screens/home_screen.dart';
import 'package:recipe_food/screens/main_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> screens = [MainScreen(), Scaffold(), Scaffold(),Scaffold()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
          width: size.width,
          height: size.height * .09,
               color: Colors.white,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size.width * .05),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                          bottom: index == currentIndex ? 0 : size.width * .029,
                          right: size.width * .0422,
                          left: size.width * .0422),
                      width: size.width * .14,
                      height: index == currentIndex ? size.width * .015 : 0,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10))),
                    ),
                    Icon(
                      iconList[index],
                      size: size.width * .08,
                      color: index == currentIndex ? mainColor : Colors.black38,
                    ),
                    SizedBox(
                      height: size.height * .02,
                    )
                  ],
                ),
              );
            },
          )),
      body: screens.elementAt(currentIndex),
    );
  }
}
