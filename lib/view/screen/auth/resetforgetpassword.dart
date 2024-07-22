// ignore_for_file: deprecated_member_use, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/forgetpassword/resetpassword_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/core/funcations/vaildinput.dart';
import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextfield.dart';
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
          title: Text("42".tr,
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
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "35".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "34".tr),
                    const SizedBox(height: 15),
                    GetBuilder<ResetPasswordControllerImp>(
                      builder: (controller) => CustonTextFormAuth(
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 10, 30, "password");
                        },
                        mycontroller: controller.password,
                        hinttext: "13".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "19".tr,
                      ),
                    ),
                    GetBuilder<ResetPasswordControllerImp>(
                      builder: (controller) => CustonTextFormAuth(
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 10, 30, "password");
                        },
                        mycontroller: controller.password,
                        hinttext: "43".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "19".tr,
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
        )));
  }
}
