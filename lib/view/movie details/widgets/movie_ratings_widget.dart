import 'package:flutter/material.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';

class MovieRatingsWidget extends StatelessWidget {
  final ratings;
  const MovieRatingsWidget({
    Key key,
    @required this.ratings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "User Ratings: " + ((ratings * 10).ceil()).toString() + "%",
          style: TextStyle(
            // color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.vertical(),
          ),
        ),
        SizedBox(
          height: 5.vertical(),
        ),
        Container(
          height: 8.vertical(),
          width: 330.horizontal(),
          decoration: BoxDecoration(
            color: Color(0xff3CBEC9).withOpacity(0.25),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            margin: EdgeInsets.only(
                right: SizeConfig.safeBlockHorizontal *
                    (330 - ((ratings * 33).ceil()))),
            height: 8.vertical(),
            width: 330.horizontal(),
            decoration: BoxDecoration(
              color: Color(0xff3CBEC9),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ],
    ).paddingTop(25);
  }
}
