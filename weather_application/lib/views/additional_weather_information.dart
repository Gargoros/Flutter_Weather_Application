import 'package:flutter/material.dart';

Widget additionalWeatherInformation(
  String humidity,
  String precipitation,
  String pressure,
  String windSpeed,
  String windDirection,
) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Text("$humidity \n Humidity",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
              Text(
                "$precipitation \n Precipitation",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text("$pressure \n Pressure",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("$windSpeed \n WindSpeed",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
              Text("$windDirection \n WindDirection",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
            ],
          ),
          Divider(
            height: 40,
            thickness: 4,
            indent: 120,
            endIndent: 120,
          ),
        ]),
  );
}
