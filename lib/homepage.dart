import 'package:flutter/material.dart';
import 'package:dashboard/Widgets/list.dart';
import 'package:dashboard/Widgets/lastcontainer.dart';
import 'package:dashboard/Widgets/iconcontainer.dart';
import 'package:dashboard/Widgets/picturecontainer.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: ksize.height * 0.32,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: ksize.height * 0.05,
                left: ksize.width * 0.05,
                right: ksize.width * 0.05,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 35,
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        size: 35,
                      )
                    ],
                  ),
                  SizedBox(
                    height: ksize.height * 0.06,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ksize.width * 0.06),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 90,
                          child: CircleProgressBar(
                            foregroundColor: Colors.red,
                            backgroundColor: Colors.amberAccent,
                            value: 0.75,
                            child: PictureContainer(),
                          ),
                        ),
                        SizedBox(
                          width: ksize.height * 0.03,
                        ),
                        const Column(
                          children: [
                            Text(
                              'AQIB KHAN',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'APP Developer',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ksize.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: ksize.width * 0.05,
              right: ksize.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'My Tasks',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconContainer(),
                  ],
                ),
                SizedBox(
                  height: ksize.height * 0.02,
                ),
                Lists(
                  title: 'To Do',
                  text: '5 tasks now, 1 Started',
                  icon: Icons.alarm,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: ksize.height * 0.01,
                ),
                Lists(
                    title: 'In Progress',
                    text: '1 task now, 1 Started',
                    icon: Icons.fingerprint,
                    color: const Color.fromARGB(255, 130, 240, 40)),
                SizedBox(
                  height: ksize.height * 0.01,
                ),
                Lists(
                  title: 'Done',
                  text: '13 tasks now, 1 Started',
                  icon: Icons.file_download_done,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: ksize.height * 0.02,
                ),
                const Text(
                  'Active Projects',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: ksize.height*0.01,),
                SizedBox(
                  height: 175,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.only(left: ksize.width*0.04,right: ksize.width*0.04,),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const LastContainer(
                                  title: 'Medical App', color: Colors.grey),
                              SizedBox(
                                width: ksize.width * 0.04,
                              ),
                              const LastContainer(
                                  title: 'History notes', color: Colors.red)
                            ],
                          ),
                          SizedBox(height: ksize.height*0.01,),
                          Row(
                            children: [
                              const LastContainer(
                                  title: 'Fiver App', color: Colors.green),
                              SizedBox(
                                width: ksize.width * 0.04,
                              ),
                              const LastContainer(
                                  title: 'Others Bill', color: Colors.blue)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
