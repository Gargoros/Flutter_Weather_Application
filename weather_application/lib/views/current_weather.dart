import 'package:flutter/material.dart';

Widget currentWeather(
    IconData icon, String location, String temp, String condition) {
  return Center(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Icon(
            icon,
            color: Colors.yellow,
            size: 120,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "$location",
            style: TextStyle(
                fontSize: 28, color: Colors.black, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$temp',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              Text(
                '   |   ',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              Text(
                '$condition',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              )
            ],
          )
        ]),
  );
}
