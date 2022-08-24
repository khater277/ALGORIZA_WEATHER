import 'package:flutter/material.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "34° / 24° feels like 34°",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "sunday, 2:55 pm",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
