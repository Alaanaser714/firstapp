
// // ignore_for_file: avoid_print

// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/address__data.dart';
// import 'package:flutter_firstapplication/date/model/address_model.dart';
// import 'package:get/get.dart';

// class AddressViewController extends GetxController {
//   AddressData addressData = AddressData(Get.find());

//   List<AddressModel> data = [];

//   late StatusRequest statusRequest;

//   MyServices myServices = Get.find();

//   deleteAddress(String addressid) {
//     addressData.deleteData(addressid);
//     data.removeWhere((element) => element.addressId == addressid);
//     update();
//   }

//   getData() async {
//     statusRequest = StatusRequest.loading;

//     var response = await addressData
//         .getData(myServices.sharedPreferences.getString("id")!);

//     print("=============================== Controller $response ");

//     statusRequest = handlingData(response);

//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         data.addAll(listdata.map((e) => AddressModel.fromJson(e)));
//         if (data.isEmpty){
//           statusRequest = StatusRequest.failure ; 
//         }
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
    
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
// }