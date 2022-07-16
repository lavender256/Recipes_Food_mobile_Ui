import 'package:flutter/material.dart';
import 'package:recipe_food/data/data.dart';
import 'package:recipe_food/model/recipe.dart';
import 'package:recipe_food/widgets/page_view_replace.dart';
import 'package:recipe_food/widgets/popular_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0.0;
  double yOffset = 0.0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(isDrawerOpen ? 0.85 : 1.0)
            ..rotateZ(isDrawerOpen ? -50 : 0),
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(color:Color(0xffe7eefb),
            borderRadius: BorderRadius.circular(isDrawerOpen?25:0)
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .05,
                      vertical: size.height * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isDrawerOpen?IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              isDrawerOpen=false;
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: size.width * .1,
                          )):IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 290;
                              yOffset = 50;
                              isDrawerOpen=true;
                            });
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: size.width * .1,
                          )),
                      Text(
                        "Recipes",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * .08),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: PageViewReplace()),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .05,
                      vertical: size.height * .03),
                  child: Row(
                    children: [
                      Icon(
                        Icons.fastfood_rounded,
                        color: Colors.deepOrange,
                        size: size.width * .08,
                      ),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      Text(
                        "Popular",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * .05),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    Recipe recipe = recipes[index];
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * .04),
                      child: PopularCard(
                        recipe: recipe,
                      ),
                    );
                  },
                  childCount: recipes.length,
                ),
              )
            ],
          ),
        );
  }
}
