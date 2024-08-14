
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/forgetpassword/verifycode_data.dart';
// import 'package:get/get.dart';

// abstract class VerifyCodeController extends GetxController {
//   checkCode();
//   goToResetPassword(String verifycode);
// }

// class VerifyCodeControllerImp extends VerifyCodeController {
//   String? email;

//   VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
//       VerifyCodeForgetPasswordData(Get.find());

//   StatusRequest statusRequest = StatusRequest.none;

//   @override
//   checkCode() {}

//   @override
//   goToResetPassword(verifycode) async {
//     statusRequest = StatusRequest.loading;
//     update();
//     var response =
//         await verifyCodeForgetPasswordData.postdata(email!, verifycode);
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         Get.offNamed(AppRoute.resetPassword , arguments: {
//           "email" : email
//         });
//       } else {
//         Get.defaultDialog(
//             title: "ُWarning", middleText: "Verify Code Not Correct");
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     email = Get.arguments['email'];
//     super.onInit();
//   }
// }


























import 'package:flutter_firstapplication/core/class/statusrequest.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
import 'package:flutter_firstapplication/date/datesource/remote/forgetpassword/verifycode_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postdata(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
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
}







