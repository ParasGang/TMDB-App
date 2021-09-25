import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/controller/nav_bar_controller.dart';

class SearchBar extends StatefulWidget {
  final Function onTap;

  SearchBar({Key key, @required this.onTap}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool showClear = false;
  FocusNode _focusNode = FocusNode();
  TextEditingController _searchController = TextEditingController();
  NavBarController _navBarController = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: SizeConfig.safeBlockVertical * 50,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).cardColor.withOpacity(0.3),
            offset: Offset(0, 4.vertical()),
            blurRadius: 8.vertical(),
          ),
        ],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: TextField(
          focusNode: _focusNode,
          controller: _searchController,
          onChanged: (String value) {
            widget.onTap(value);
            if (_searchController.text.isNotEmpty && showClear != true) {
              setState(() {
                _navBarController.setIndex(3);
                showClear = true;
              });
            } else if (_searchController.text.isEmpty && showClear == true) {
              setState(() {
                _navBarController.setIndex(0);
                showClear = false;
              });
            }
          },
          style: TextStyle(color: Theme.of(context).focusColor),
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Feather.search,
                size: 20.vertical(),
                color: Theme.of(context).focusColor,
              ),
              suffixIcon: Visibility(
                visible: showClear,
                child: GestureDetector(
                  onTap: () {
                    _searchController.clear();
                    setState(() {
                      _navBarController.setIndex(0);
                      showClear = false;
                      _focusNode.unfocus();
                    });
                  },
                  child: Icon(Icons.clear,
                      size: 18.vertical(), color: Theme.of(context).focusColor),
                ),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Theme.of(context).focusColor,
              )),
        ).paddingLeft(5),
      ),
    ).paddingFromLTRB(20, 24, 10, 24);
  }
}
