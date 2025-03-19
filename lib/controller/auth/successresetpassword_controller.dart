import 'package:get/get.dart';
import 'package:maps_project/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {

goToPageLogin() ; 

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
     Get.offAllNamed(AppRoute.login) ; 
  }

}