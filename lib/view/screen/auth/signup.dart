// ignore_for_file: deprecated_member_use, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/auth/signup_controller.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextfield.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
import 'package:flutter_firstapplication/view/widget/auth/textsignup.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("17".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
         CustomTextTitleAuth(text: "10".tr),
          const SizedBox(height: 10),
           CustomTextBodyAuth(
              text:
                  "24".tr),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.username,
            hinttext: "23".tr,
            iconData: Icons.person_outline,
            labeltext: "20".tr,
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "22".tr,
            iconData: Icons.phone_android_outlined,
            labeltext: "21".tr,
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "17".tr,
              onPressed: () {
                controller.signUp();
              }),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: "25".tr,
            texttwo: "26".tr,
            onTap: () {
              controller.goToSignIn();
            },
          ),
        ]),
      ),
    );
  }
}
