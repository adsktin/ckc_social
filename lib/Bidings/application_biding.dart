import 'package:get/get.dart';
import 'package:social_android/Controllers/home_controller.dart';
import 'package:social_android/Controllers/login_controller.dart';
import 'package:social_android/Controllers/post_controller.dart';
import 'package:social_android/Controllers/register_controller.dart';

class ApplicationBiding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => PostController());
    Get.lazyPut(() => HomeController());
  }
}
