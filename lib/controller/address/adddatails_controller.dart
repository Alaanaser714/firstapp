// // ignore_for_file: avoid_print

// import 'package:flutter/cupertino.dart';
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/address__data.dart';
// import 'package:get/get.dart';

// class AddAddressDetailsController extends GetxController {
//   StatusRequest statusRequest = StatusRequest.none;

//   AddressData addressData = AddressData(Get.find());

//   MyServices myServices = Get.find();

//   TextEditingController? name;
//   TextEditingController? city;
//   TextEditingController? street;

//   String? lat;
//   String? long;

//   intialData() {
//     name = TextEditingController();
//     city = TextEditingController();
//     street = TextEditingController();

//     lat = Get.arguments['lat'];
//     long = Get.arguments['long'];

//     print(lat);
//     print(long);
//   }

//   addAddress() async {
//     statusRequest = StatusRequest.loading;
//     update();

//     var response = await addressData.addData(
//         myServices.sharedPreferences.getString("id")!,
//         name!.text,
//         city!.text,
//         street!.text,
//         lat!,
//         long!);

//     print("=============================== Controller $response ");

//     statusRequest = handlingData(response);

//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         Get.offAllNamed(AppRoute.homepage);
//         Get.snackbar("Good", "Now you can order to this address");
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     intialData();
//     super.onInit();
//   }
// }
