import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Search a City',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 22),
              hintText: "Enter City Name",
              suffix: Icon(Icons.search),
              labelText: "Search",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
