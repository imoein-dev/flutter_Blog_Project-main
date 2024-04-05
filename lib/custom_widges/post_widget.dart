import 'package:flutter/material.dart';

Widget getBlogePost({required String imageName, required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(

        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : ۱۲،۵۶۰',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.price_check,
            color: Colors.red,
            size: 25.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'خرید روی : ۱۲،۳۶۵',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.sell,
            color: Colors.green,
            size: 25.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    ],
  );
}
