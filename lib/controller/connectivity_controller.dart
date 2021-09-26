import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  RxBool connectivity = true.obs;
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void onInit() {
    super.onInit();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        connectivity.value = true;
      } else {
        connectivity.value = false;
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    subscription.cancel();
  }

  void checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      connectivity.value = true;
    } else {
      connectivity.value = false;
    }
  }
}
