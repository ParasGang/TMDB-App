import 'package:flutter/material.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';

class MovieReleaseDateWidget extends StatelessWidget {
  final String date;
  const MovieReleaseDateWidget({
    Key key,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "(" + date.replaceRange(4, date.length, "") + ")  |  UA",
      style: TextStyle(
        // color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18.vertical(),
      ),
    );
  }
}
