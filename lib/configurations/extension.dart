import 'package:flutter/cupertino.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';

extension WidgetPaddingX on Widget {
  Widget paddingLeft(double left) => Padding(
        padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * left),
        child: this,
      );

  Widget paddingRight(double right) => Padding(
        padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * right),
        child: this,
      );

  Widget paddingTop(double top) => Padding(
        padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * top),
        child: this,
      );

  Widget paddingBottom(double bottom) => Padding(
        padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical * bottom),
        child: this,
      );

  Widget paddingFromLTRB(
          double left, double top, double right, double bottom) =>
      Padding(
        padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * left,
          SizeConfig.safeBlockVertical * top,
          SizeConfig.safeBlockHorizontal * right,
          SizeConfig.safeBlockVertical * bottom,
        ),
        child: this,
      );
}

extension SizeX on int {
  double vertical() => SizeConfig.safeBlockVertical * this;
  double horizontal() => SizeConfig.safeBlockHorizontal * this;
}
