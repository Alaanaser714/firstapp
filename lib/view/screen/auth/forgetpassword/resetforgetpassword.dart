// // ignore_for_file: prefer_adjacent_string_concatenation

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/forgetpassword/resetpassword_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:flutter_firstapplication/core/constant/color.dart';
// import 'package:flutter_firstapplication/core/funcations/vaildinput.dart';
// import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtextformauth.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
// import 'package:get/get.dart';

// class ResetPassword extends StatelessWidget {
//   const ResetPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(ResetPasswordControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text("42".tr,
//             style: Theme.of(context)
//                 .textTheme
//                 .displayLarge!
//                 .copyWith(color: AppColor.grey)),
//       ),
//       body: GetBuilder<ResetPasswordControllerImp>(
//           builder: (controller) => HandlingDataRequest(
//               statusRequest: controller.statusRequest,
//               widget: Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                 child: Form(
//                   key: controller.formstate,
//                   child: ListView(children: [
//                     const SizedBox(height: 20),
//                     CustomTextTitleAuth(text: "35".tr),
//                     const SizedBox(height: 10),
//                     CustomTextBodyAuth(text: "35".tr),
//                     const SizedBox(height: 15),
//                     CustomTextFormAuth(
//                       isNumber: false,
//                       valid: (val) {
//                         return validInput(val!, 3, 50, "password");
//                       },
//                       mycontroller: controller.password,
//                       hinttext: "13".tr,
//                       iconData: Icons.lock_outline,
//                       labeltext: "19".tr,

//                     ),
//                     CustomTextFormAuth(
//                       isNumber: false,

//                       valid: (val) {
//                         return validInput(val!, 3, 50, "password");
//                       },
//                       mycontroller: controller.repassword,
//                       hinttext: "Re" + " " + "13".tr,
//                       iconData: Icons.lock_outline,
//                       labeltext: "19".tr,
//                       // mycontroller: ,
//                     ),
//                     CustomButtomAuth(
//                         text: "33".tr,
//                         onPressed: () {
//                           controller.goToSuccessResetPassword();
//                         }),
//                     const SizedBox(height: 40),
//                   ]),
//                 ),
//               ))),
//     );
//   }
// }

// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/forgetpassword/resetpassword_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/core/funcations/vaildinput.dart';
import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextformauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "35".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "35".tr),
                    const SizedBox(height: 15),
                    GetBuilder<ResetPasswordControllerImp>(
                        builder: (controller) => CustomTextFormAuth(
                              obscureText: controller.isshowpassword,
                              onTapIcon: () {
                                controller.showPassword();
                              },

                              isNumber: false,
                              valid: (val) {
                                return validInput(val!, 3, 40, "password");
                              },
                              mycontroller: controller.password,
                              hinttext: "13".tr,
                              iconData: Icons.lock_outline,
                              labeltext: "19".tr,
                              // mycontroller: ,
                            )),
                    GetBuilder<ResetPasswordControllerImp>(
                      builder: (controller) => CustomTextFormAuth(
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 3, 40, "password");
                        },
                        mycontroller: controller.repassword,
                        hinttext: "Re" + " " + "13".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "19".tr,
                        // mycontroller: ,
                      ),
                    ),
                    CustomButtomAuth(
                        text: "33".tr,
                        onPressed: () {
                          controller.goToSuccessResetPassword();
                        }),
                    const SizedBox(height: 40),
                  ]),
                ),
              ))),
    );
  }
}
