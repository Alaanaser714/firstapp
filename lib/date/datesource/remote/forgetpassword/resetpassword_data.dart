import 'package:flutter_firstapplication/core/class/crud.dart';
import 'package:flutter_firstapplication/linkApi.dart';

class ResetPasswordData {
  Crud crud;

  ResetPasswordData(this.crud);

  postdata(
    String password,
    String email,
  ) async {
    var response = await crud.postData(AppLink.resetpassword, {
      "password": password,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
