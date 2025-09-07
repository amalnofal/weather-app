import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'There is no weather 😔',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'SignikaNegative',
              ),
            ),
            Text(
              '\nStart searching now 🔍',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'SignikaNegative',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
