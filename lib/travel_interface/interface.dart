import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:try_something/travel_interface/interface2.dart';

class MyInterface extends StatelessWidget {
  final List<Map<String, dynamic>> imgList = [
    {
      'image': 'assets/images/bouddha.jpg',
      'text': 'Boudhha,kathmandu',
    },
    {
      'image': 'assets/images/pokhara.jpg',
      'text': 'Fewataal,Pokhara',
    },
    {
      'image': 'assets/images/mountain.png',
      'text': 'Rara,Nepal',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 218, 231),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Destination",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: imgList.map((item) {
                return Stack(
                  children: [
                    Container(
                      height: 700,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(item['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Text(
                        item['text'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/girl.jpg',
            ),
            Interface2(),
          ],
        ),
      ),
    );
  }
}
