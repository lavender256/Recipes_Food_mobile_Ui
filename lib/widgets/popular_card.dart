import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_food/model/recipe.dart';

class PopularCard extends StatefulWidget {
  final Recipe recipe;

  PopularCard({this.recipe});

  @override
  _PopularCardState createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height * .03),
      height: size.height * .15,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              bottom: 0,
              top: 0,
              child: Container(
                margin: EdgeInsets.all(size.width*.01),
                width: size.width * .3,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(widget.recipe.recipeImage),fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
              )),
          Positioned(
              top: size.height*.02,
              left: size.width * .33,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.recipe.recipeName,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: size.height*.015,),
                  Text(
                    widget.recipe.recipeMaker,
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                  )
                ],
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: size.width * .13,
                height: size.height * .05,
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.black26,
                      size: size.width * .04,
                    ),
                    SizedBox(
                      width: size.width * .01,
                    ),
                    Icon(Icons.bookmark_border,
                        color: Colors.black26, size: size.width * .05)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
