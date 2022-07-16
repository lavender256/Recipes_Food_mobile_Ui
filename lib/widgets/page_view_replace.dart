import 'package:flutter/material.dart';
import 'package:recipe_food/data/data.dart';
import 'package:recipe_food/model/recipe.dart';
import 'package:recipe_food/widgets/recipe_card.dart';

class PageViewReplace extends StatefulWidget {

  @override
  _PageViewReplaceState createState() => _PageViewReplaceState();
}

class _PageViewReplaceState extends State<PageViewReplace> {
  PageController pageController;
  int currentPage=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(viewportFraction:0.75);
    pageController.addListener(() {
      int position=pageController.page.round();
      if(currentPage!=position){
        setState(() {
          currentPage=position;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.6,
      child: PageView.builder(
        controller: pageController,
          physics: BouncingScrollPhysics(),
          itemCount: recipes.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(BuildContext context,int index){
          bool active=index==currentPage;
          Recipe recipe=recipes[index];
          return RecipeCard(index: index,recipe: recipe,isActive:active,);
          }),
    );
  }
}
