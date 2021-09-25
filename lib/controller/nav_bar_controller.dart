import 'package:get/get.dart';

class NavBarController extends GetxController {
  RxInt index = 0.obs;
  //index = 0 for now_playing movies
  //index = 1 fot top_rated movies
  //index = 3 for searched movies


  void setIndex(int i) {
    index.value = i;
  }
}
