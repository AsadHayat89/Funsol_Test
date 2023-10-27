import 'package:get/get.dart';
import '../export.dart';
class HomeController extends GetxController {

  Rx<GridItem> gridItems = GridItem().onEmpty().obs;
  RxBool isShown = false.obs;
  RxString onDataError = "no Data Available".obs;
  RxString apiStatus = 'Running'.obs;
  RxString failedResponce = ''.obs;

  callApi() {
    ApiRequests.getUrlData().then((value) => {
    value.fold((l) => {
    apiStatus.value='failed',
    failedResponce.value=l.error!,
    }, (r) => {
    gridItems.value=r,
    }),
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    callApi();
  }
}