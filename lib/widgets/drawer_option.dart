import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
final IconData icon;
final String title;

DrawerOption({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.3,
      height: size.height*.05,
      child: Row(
        children: [
          Icon(icon,color: Colors.white,size: size.width*.06,),
          SizedBox(width: size.width*.04,),
          Text(title,style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w900,fontSize: size.width*.04
          ),)
        ],
      ),
    );
  }
}
