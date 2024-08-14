// // ignore_for_file: unnecessary_brace_in_string_interps, avoid_print, unused_local_variable


// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/auth/login_data.dart';
// import 'package:get/get.dart';

// abstract class LoginController extends GetxController {
//   login();
//   goToSignUp();
//   goToForgetPassword();
// }

// class LoginControllerImp extends LoginController {
//   LoginData loginData = LoginData(Get.find());

//   GlobalKey<FormState> formstate = GlobalKey<FormState>();

//   late TextEditingController email;
//   late TextEditingController password;

//   bool isshowpassword = true;

//   MyServices myServices = Get.find();

//   StatusRequest statusRequest = StatusRequest.none;

//   showPassword() {
//     isshowpassword = isshowpassword == true ? false : true;
//     update();
//   }

//   @override
//   login() async {
//     if (formstate.currentState!.validate()) {
//       statusRequest = StatusRequest.loading;
//       update();
//       var response = await loginData.postdata(email.text, password.text);
//       print("=============================== Controller $response ");
//       statusRequest = handlingData(response);
//       if (StatusRequest.success == statusRequest) {
//         if (response['status'] == "success") {
//           // data.addAll(response['data']);
//           if (response['data']['users_approve'] == "1") {
//             myServices.sharedPreferences  .setString("id", response['data']['users_id']);
//             String userid = myServices.sharedPreferences.getString("id")!;
//             myServices.sharedPreferences.setString("username", response['data']['users_name']);
//             myServices.sharedPreferences.setString("email", response['data']['users_email']);
//             myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
//             myServices.sharedPreferences.setString("step", "2");

//             FirebaseMessaging.instance.subscribeToTopic("users");
//             FirebaseMessaging.instance.subscribeToTopic("users${userid}");
            
//             Get.offNamed(AppRoute.homepage);
//           } else {
//             Get.toNamed(AppRoute.verfiyCodeSignUp,
//                 arguments: {"email": email.text});
//           }
//         } else {
//           Get.defaultDialog(
//               title: "ُWarning", middleText: "Email Or Password Not Correct");
//           statusRequest = StatusRequest.failure;
//         }
//       }
//       update();
//     } else {}
//   }

//   @override
//   goToSignUp() {
//     Get.offNamed(AppRoute.signUp);
//   }

//   @override
//   void onInit() {
//     FirebaseMessaging.instance.getToken().then((value) {
//       print(value);
//       String? token = value;
//     });
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     super.dispose();
//   }

//   @override
//   goToForgetPassword() {
//     Get.toNamed(AppRoute.forgetPassword);
//   }
// }


























// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter_firstapplication/core/class/statusrequest.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
import 'package:flutter_firstapplication/core/services/services.dart';
import 'package:flutter_firstapplication/date/datesource/remote/auth/login_data.dart';
import 'package:get/get.dart'; 
abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find()); 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;
 
   MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
        //  myServices.sharedPreferences.setString("id", response['data']['users_id']) ;
          myServices.sharedPreferences.setString("username", response['data']['users_name']) ;
          myServices.sharedPreferences.setString("email", response['data']['users_email']) ;
          myServices.sharedPreferences.setString("phone", response['data']['users_phone']) ;
          myServices.sharedPreferences.setString("step","2") ;
          Get.offNamed(AppRoute.homepage);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}