// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/auth/verfiycodesignup_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtextbod.dart';
import 'package:flutter_firstapplication/view/widget/auth/customtexttitle.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("39".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
                
                 widget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "40".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "41".tr),
                    const SizedBox(height: 15),
                    OtpTextField(
                      fieldWidth: 50.0,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: const Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      }, // end onSubmit
                    ),
                    const SizedBox(height: 40),
                     InkWell(onTap: (){
                    controller.reSend() ; 
                  },child: const Center(child: Text("Resend verfiy code" , style: TextStyle(color: AppColor.primaryColor , fontSize: 20 ),)),)


                  ]),
                )),
      )  );
  }
}
