import 'package:flutter/material.dart';


class IconContainer extends StatelessWidget{
  const IconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Icon(Icons.calendar_month,color: Colors.white,),
    );
  }
}