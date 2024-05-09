import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 218, 231),
      appBar: AppBar(
        title: Text('Search for Your Destinations'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SearchBar(
          hintText: ' Where do you want to explore?',
        ),
      ),
    );
  }
}
