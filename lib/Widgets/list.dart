import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  Lists({super.key, required this.title, required this.text, required this.icon, required this.color});

  final String title;
  final String text;
  IconData icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(width: ksize.width*0.04,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Text(text,style: const TextStyle(
              color: Color.fromARGB(255, 167, 154, 154),
            ),)
          ],
        )
      ],
    );
  }
}
