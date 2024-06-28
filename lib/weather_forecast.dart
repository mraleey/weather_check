import 'package:flutter/material.dart';

class WeatherForecast extends StatelessWidget {
  final String time;
  final IconData icons;
  final String temp;

  const WeatherForecast({
    super.key,
    required this.icons,
    required this.temp,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5,
            ),
            Icon(
              icons,
              size: 32,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(temp),
          ],
        ),
      ),
    );
  }
}
