import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {

  final String CategoryName;



  const CategoryBox({Key key, this.CategoryName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 75,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),
      child: Center(child: Text(CategoryName,style: TextStyle(color: Color(0xff000f33),),),),
    );
  }
}
