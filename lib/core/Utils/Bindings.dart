import 'package:cloud_bloud/Modules/Auth/SignUp/signup_controller.dart';
import 'package:cloud_bloud/Modules/Auth/login/LoginController.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => SignUpController(), fenix: true);
  }
}
