import 'package:cloud_bloud/Modules/Auth/SignUp/signup_controller.dart';
import 'package:cloud_bloud/Modules/Auth/login/LoginController.dart';
import 'package:cloud_bloud/Modules/Seeker/seeker_controller.dart';
import 'package:cloud_bloud/Modules/donorListScreen/donors_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => SeekerController(), fenix: true);
    Get.lazyPut(() => DonorController(), fenix: true);
  }
}
