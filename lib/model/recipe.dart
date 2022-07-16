import 'package:flutter/material.dart';

class Recipe {
  String recipeName;
  String recipeImage;
  String recipeMaker;
  Color startColor;
  Color endColor;

  Recipe(
      {this.recipeName,
      this.recipeImage,
      this.recipeMaker,
      this.startColor,
      this.endColor});
}
