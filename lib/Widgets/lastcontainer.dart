import 'package:flutter/material.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Container(
      height: 165,
      width: 135,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: ksize.height*0.02,left: ksize.width*0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: ksize.width*0.03),
              child:  SizedBox(
                width: 70,
                child: CircleProgressBar(
                  foregroundColor: Colors.white,
                  backgroundColor: color,
                  value: 0.80,
                  child: const Center(
                    child: Text(
                      '80%',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: ksize.height*0.03,),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Text('9 Hours progress',style: TextStyle(color: Color.fromARGB(255, 162, 238, 225)),),
          ],
        ),
      ),
    );
  }
}
