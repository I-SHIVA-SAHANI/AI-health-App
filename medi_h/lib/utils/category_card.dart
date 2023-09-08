import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String CategoryName;

  CategoryCard({
    required this.iconImagePath,
    required this.CategoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0), color: Colors.lightBlueAccent),
        child: Row(
          children: [
          Image.asset(iconImagePath),
          SizedBox(width:20,),
          Text(CategoryName, style: TextStyle(fontFamily:'VacerSansRegularPersonal',color: Colors.black54, fontWeight: FontWeight.bold,letterSpacing: 0.5,),),
        ],),
      ),
    );
  }
}