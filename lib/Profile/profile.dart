import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text('My Profile'),
      // ),
      body: SingleChildScrollView(
          child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60)),
          child: Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  Text("Ritesh KC"),
                  Text("9887878998"),
                ],
              )),
        ),
        Positioned(
          top: 400,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.1,
            color: Colors.red,
          ),
        ),
        Positioned(
          top: 300,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.3,
            height: MediaQuery.sizeOf(context).height * 0.1,
            color: Colors.blue,
          ),
        ),
      ])),
      // body: Stack(children: [
      //   Container(
      //     height: MediaQuery.of(context).size.height * 0.3,
      //     width: MediaQuery.of(context).size.width,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
      //         color: Colors.lightBlueAccent),
      //   ),
      //   Positioned(
      //       top: 19,
      //       left: 115,
      //       child: CircleAvatar(
      //         radius: MediaQuery.of(context).size.height * 0.1,
      //         backgroundImage: AssetImage('assets/images/nepal2.png'),
      //         backgroundColor: Colors.amberAccent,
      //       )),
      //   Positioned(
      //     left: 20,
      //     top: 310,
      //     child: Expanded(
      //         child: Container(
      //       height: 100,
      //       width: 350,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(20),
      //         color: Colors.blue,
      //       ),
      //     )),
      //   ),
      //   Positioned(
      //       right: 1,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: MediaQuery.of(context).size.height * 0.42,
      //           width: MediaQuery.of(context).size.width * 1,
      //           decoration: BoxDecoration(
      //               color: Colors.blue,
      //               borderRadius: BorderRadius.circular(20)),
      //         ),
      //       ))
      // ]),
    );
  }
}
