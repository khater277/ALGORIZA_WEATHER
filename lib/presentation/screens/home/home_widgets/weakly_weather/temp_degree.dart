import 'package:flutter/material.dart';

class TempDegree extends StatelessWidget {
  final String degree;
  const TempDegree({Key? key, required this.degree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$degree°",
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
