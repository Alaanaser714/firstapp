// ignore_for_file: deprecated_member_use, use_super_parameters


import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/auth/login_controller.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/view/widget/auth/custombuttomauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextfield.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
import 'package:flutter_firstapplication/view/widget/auth/logoauth.dart';
import 'package:flutter_firstapplication/view/widget/auth/textsignup.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("15".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
         CustomTextTitleAuth(text: "10".tr),
          const SizedBox(height: 10),
           CustomTextBodyAuth(
              text:
                  "11".tr),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            // mycontroller: ,
          ),
          InkWell(
            onTap: () {
              controller.goToForgetPassword();
            },
            child:  Text(
              "14".tr,
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtomAuth(text: "15".tr, onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: "16".tr,
            texttwo: "17".tr,
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}