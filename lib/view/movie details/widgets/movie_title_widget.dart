import 'package:flutter/material.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';

class MovieTitleWidget extends StatelessWidget {
  final String title;
  const MovieTitleWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
        // color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 30.vertical(),
      ),
    ).paddingFromLTRB(15, 20, 15, 20);
  }
}
