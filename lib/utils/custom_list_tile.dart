import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Color color;
  final String text;
  final String date;
  final String image;
  final double value;
  final bool ispositive;
  const CustomListTile(
      {super.key,
      required this.color,
      required this.text,
      required this.date,
      required this.value,
      required this.ispositive,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(radius: 20,backgroundColor: color,backgroundImage: AssetImage(image),),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              date,
              style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),
            ),
          ],
        ),
        trailing: Text("\$ $value",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: ispositive?Colors.cyan:Colors.orange),),
      ),
    );
  }
}
