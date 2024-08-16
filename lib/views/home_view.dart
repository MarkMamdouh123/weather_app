import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.search,
              size: 34,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.blue,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: const NoWeatherBody(),
    );
  }
}
