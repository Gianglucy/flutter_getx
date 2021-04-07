import 'package:base_getx/@core/data/repo/user.repo.dart';
import 'package:base_getx/@share/utils/util.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userName = ''.obs;
  RxDouble number = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    Get.log("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    Get.log("onClose");
  }

  @override
  void onReady() {
    super.onReady();
    Get.log("onReady");
    _getMyPage();
  }

  _getMyPage() async {
    // showLoading();
    var _userRepo = Get.find<UserRepo>();
    var res = await _userRepo.getMyPage();
    // hideLoading();
    userName.value = res.name;
  }
}
