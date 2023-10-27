import 'package:get/get.dart';
import '../export.dart';
class DataBinds implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());

  }
}