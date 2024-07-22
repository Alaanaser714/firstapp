
import 'package:flutter_firstapplication/core/class/statusrequest.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
import 'package:flutter_firstapplication/date/datesource/remote/auth/verifycode_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignUpData verfiyCodeSignUpData = VerifyCodeSignUpData(Get.find());
 

  String? email;

  StatusRequest statusRequest = StatusRequest.none ;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdata(email!, verfiyCodeSignUp); 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") { 
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
   }

   reSend(){
      verfiyCodeSignUpData.resendData(email!); 
   }
 
}