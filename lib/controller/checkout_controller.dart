// // ignore_for_file: avoid_print

// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/address__data.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/checkout_data.dart';
// import 'package:flutter_firstapplication/date/model/address_model.dart';
// import 'package:get/get.dart';

// class CheckoutController extends GetxController {
//   AddressData addressData = Get.put(AddressData(Get.find()));
//   CheckoutData checkoutData = Get.put(CheckoutData(Get.find()));

//   MyServices myServices = Get.find();

//   StatusRequest statusRequest = StatusRequest.none;

//   String? paymentMethod;
//   String? deliveryType;
//   String addressid = "0";

//   late String couponid;
//   late String coupondiscount;
//   late String priceorders;

//   List<AddressModel> dataaddress = [];

//   choosePaymentMethod(String val) {
//     paymentMethod = val;
//     update();
//   }

//   chooseDeliveryType(String val) {
//     deliveryType = val;
//     update();
//   }

//   chooseShippingAddress(String val) {
//     addressid = val;
//     update();
//   }

//   getShippingAddress() async {
//     statusRequest = StatusRequest.loading;

//     var response = await addressData
//         .getData(myServices.sharedPreferences.getString("id")!);

//     print("=============================== Controller $response ");

//     statusRequest = handlingData(response);

//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         dataaddress.addAll(listdata.map((e) => AddressModel.fromJson(e)));
//         addressid = dataaddress[0].addressId.toString();
//       } else {
//         statusRequest = StatusRequest.success;
//       }
//       // End
//     }
//     update();
//   }

//   checkout() async {
//     if (paymentMethod == null) {
//       return Get.snackbar("Error", "Please select a payment method");
//     }
//     if (deliveryType == null) {
//       return Get.snackbar("Error", "Please select a order Type");
//     }
//     if (dataaddress.isEmpty) {
//       return Get.snackbar("Error", "Please select a Shipping Address");
//     }

//     statusRequest = StatusRequest.loading;

//     update();

//     Map data = {
//       "usersid": myServices.sharedPreferences.getString("id"),
//       "addressid": addressid.toString(),
//       "orderstype": deliveryType.toString(),
//       "pricedelivery": "10",
//       "ordersprice": priceorders,
//       "couponid": couponid,
//       "coupondiscount": coupondiscount.toString(),
//       "paymentmethod": paymentMethod.toString()
//     };

//     var response = await checkoutData.checkout(data);

//     print("=============================== Controller $response ");

//     statusRequest = handlingData(response);

//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         Get.offAllNamed(AppRoute.homepage);
//         Get.snackbar("Success", "the order was successfully");
//       } else {
//         statusRequest = StatusRequest.none;
//         Get.snackbar("Error", "try again");
//       }
//       // End
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     couponid = Get.arguments['couponid'];
//     priceorders = Get.arguments['priceorder'];
//     coupondiscount = Get.arguments['discountcoupon'].toString();

//     getShippingAddress();
//     super.onInit();
//   }
// }
