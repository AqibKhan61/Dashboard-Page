import 'package:flutter/material.dart';


class PictureContainer extends StatelessWidget{
  const PictureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.blue,
      ),
      child: const Icon(Icons.person,size: 65,color: Colors.white,),
    );
  }
}