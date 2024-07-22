import 'package:flutter_firstapplication/core/class/crud.dart';
import 'package:flutter_firstapplication/linkApi.dart';

class VerifyCodeSignUpData {
  Crud crud;

  VerifyCodeSignUpData(this.crud);

  postdata(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifycodesignup, {
      "verifycode": verifycode,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }

   resendData(String email) async {
    var response = await crud.postData(AppLink.resend, {"email": email});
    return response.fold((l) => l, (r) => r);
  }




}
