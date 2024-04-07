import 'package:flutter/material.dart';
import 'package:try_something/travel_interface/interface2.dart';

class MyInterface extends StatelessWidget {
  // Define a list of image paths
  final List<String> imagePaths = [
    'assets/images/namchebazaar.jpg',
    'assets/images/bouddha.jpg',
    'assets/images/pokhara.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Destination",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Image.asset(
                        // Access the image path corresponding to the card index
                        imagePaths[index % imagePaths.length],
                        fit: BoxFit.cover,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        width: MediaQuery.sizeOf(context).width,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Interface2(),
          ],
        ),
      ),
    );
  }
}
