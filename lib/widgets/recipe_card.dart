import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_food/model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final bool isActive;
  final int index;
  final Recipe recipe;

  RecipeCard({this.isActive = false, this.index, this.recipe});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double blur = isActive ? 16 : 0;
    final double offset = isActive ? 4 : 0;
    final double top = isActive ? 0 : size.height * .1;
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuint,
      margin: EdgeInsets.only(
          top: top,
          right: size.width * .03,
          bottom: 0,
          left: isActive ? size.width * .001 : 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: recipe.startColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(.1),
              blurRadius: blur,
              offset: Offset(0, offset),
            )
          ],
          image: DecorationImage(
              image: NetworkImage(recipe.recipeImage), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: LinearGradient(
                      colors: [
                        recipe.startColor,
                        recipe.endColor.withOpacity(.3)
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      tileMode: TileMode.clamp,
                      stops: [.3, .6]))),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .08, vertical: size.height * .04),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                child: Text(
                  recipe.recipeName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: size.width * .04),
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: size.width * .2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * .04),
                child: Row(
                  children: [
                    Container(
                      width: size.width * .17,
                      height: size.height * .05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Recipe",
                          style: TextStyle(color: recipe.startColor),
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.share,color: Colors.white,),
                    SizedBox(width: size.width*.05,),
                    Icon(Icons.bookmark_border,color: Colors.white,)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
