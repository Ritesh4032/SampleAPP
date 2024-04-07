import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Interface2 extends StatelessWidget {
  Interface2({super.key});
  final List<String> imagePaths = [
    'assets/images/template.jpg',
    'assets/images/Annapurna.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hot Destination',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  'More>',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(40)),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.47,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          // Access the image path corresponding to the card index
                          imagePaths[index % imagePaths.length],
                          fit: BoxFit.cover,
                          height: MediaQuery.sizeOf(context).height * 0.4,
                          width: MediaQuery.sizeOf(context).width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //     color: Colors.amber,
            //     height: 600,
            //     width: 00,
            //     child: ListView.builder(
            //         itemCount: 6,
            //         itemBuilder: ((context, index) => Container(
            //               height: ,
            //             )))),
          ],
        ),
      ),
    );
  }
}
