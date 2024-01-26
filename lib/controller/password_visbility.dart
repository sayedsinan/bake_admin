import 'package:get/get.dart';

class Password extends GetxController {
  RxBool passsordis = true.obs;
  void psswordController() {
    passsordis.value = !passsordis.value;
  }
}
