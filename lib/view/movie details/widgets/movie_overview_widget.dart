import 'package:flutter/material.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';

class MovieOverviewWidget extends StatelessWidget {
  final String overview;
  const MovieOverviewWidget({
    Key key,
    @required this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25.horizontal()),
          child: Text(
            "Overview",
            style: TextStyle(
              color: Color(0xff3CBEC9),
              fontWeight: FontWeight.bold,
              fontSize: 18.vertical(),
            ),
          ),
        ),
        SizedBox(
          height: 5.vertical(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28.horizontal(),
          ),
          child: Text(
            overview,
            style: TextStyle(
              // color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 16.vertical(),
            ),
          ),
        ),
      ],
    ).paddingTop(35);
  }
}
