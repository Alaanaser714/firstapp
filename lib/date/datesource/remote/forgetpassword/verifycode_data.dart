import 'package:flutter_firstapplication/core/class/crud.dart';
import 'package:flutter_firstapplication/linkApi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;

  VerifyCodeForgetPasswordData(this.crud);

  postdata(
    String verfiycode,
    String email,
  ) async {
    var response = await crud.postData(AppLink.verifycodeforgetpassword, {
      "verfiycode": verfiycode,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
