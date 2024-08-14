
// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/forgetpassword/forgetpassword_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:flutter_firstapplication/core/constant/color.dart';
// import 'package:flutter_firstapplication/core/funcations/vaildinput.dart';
// import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtextformauth.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
// import 'package:get/get.dart';

// class ForgetPassword extends StatelessWidget {
//   const ForgetPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(ForgetPasswordControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text("14".tr,
//             style: Theme.of(context)
//                 .textTheme
//                 .displayLarge!
//                 .copyWith(color: AppColor.grey)),
//       ),
//       body: GetBuilder<ForgetPasswordControllerImp>(
//           builder: (controller) =>  
//           HandlingDataRequest( statusRequest: controller.statusRequest, widget: 
//            Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                   child: Form(
//                     key: controller.formstate,
//                     child: ListView(children: [
//                       const SizedBox(height: 20),
//                       CustomTextTitleAuth(text: "27".tr),
//                       const SizedBox(height: 10),
//                       CustomTextBodyAuth(
                          
//                           text: "29".tr),
//                       const SizedBox(height: 15),
//                       CustomTextFormAuth(
//                         isNumber: false,
//                         valid: (val) {
//                            return validInput(val!, 10, 100, "email");
//                         },
//                         mycontroller: controller.email,
//                         hinttext: "12".tr,
//                         iconData: Icons.email_outlined,
//                         labeltext: "18".tr,
                      
//                       ),
//                       CustomButtomAuth(
//                           text: "30".tr,
//                           onPressed: () {
//                             controller.checkemail();
//                           }),
//                       const SizedBox(height: 40),
//                     ]),
//                   ),
//                 ))),
//     );
//   }
// }










// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextformauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
          builder: (controller) =>  
          HandlingDataRequest( statusRequest: controller.statusRequest, widget: 
           Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const SizedBox(height: 20),
                      CustomTextTitleAuth(text: "27".tr),
                      const SizedBox(height: 10),
                      CustomTextBodyAuth(
                          // please Enter Your Email Address To Recive A verification code
                          text: "29".tr),
                      const SizedBox(height: 15),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {},
                        mycontroller: controller.email,
                        hinttext: "12".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "18".tr,
                        // mycontroller: ,
                      ),
                      CustomButtomAuth(
                          text: "30".tr,
                          onPressed: () {
                            controller.checkemail();
                          }),
                      const SizedBox(height: 40),
                    ]),
                  ),
                ))),
    );
  }
}