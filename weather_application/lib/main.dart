import 'package:flutter/material.dart';
import 'package:weather_application/views/additional_weather_information.dart';
import 'package:weather_application/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontSize: 25).apply(color: Colors.black))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Today',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.005,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.orange,
                      Colors.green,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red
                    ],
                  )),
            )),
        currentWeather(Icons.water_drop, 'Minsk', '16°C', 'Rainy'),
        Divider(
          height: 40,
          thickness: 4,
          indent: MediaQuery.of(context).size.width * 0.3,
          endIndent: MediaQuery.of(context).size.width * 0.3,
        ),
        SizedBox(
          height: 20,
        ),
        additionalWeatherInformation(
            '57%', '1.0mm', '1019 hPa', '20 km/h', 'SE'),
        Container(
          child: Text(
            "SHARE",
            style: TextStyle(color: Colors.red, fontSize: 40),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.water_drop),
          label: "Today",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.cloudy_snowing), label: "Forecast")
      ]),
    );
  }
}
