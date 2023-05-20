import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '날씨 알리미',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(Icons.sunny)
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    '5월 14일 내일의 날씨',
                    style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/weather.png',
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
