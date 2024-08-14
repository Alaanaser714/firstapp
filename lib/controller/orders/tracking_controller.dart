// // ignore_for_file: avoid_print

// import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/funcations/getpolyline.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/model/orders_model.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class TracingController extends GetxController {
//   MyServices myServices = Get.find();

//   GoogleMapController? gmc;
//   Set<Polyline> polylineSet = {};

//   late OrdersModel ordersModel;

//   CameraPosition? cameraPosition;
//   List<Marker> markers = [];

//   double? destlat;
//   double? destlong;

//   double? currentlat;
//   double? currentlong;

//   StatusRequest statusRequest = StatusRequest.success;

//   initalData() {
//     cameraPosition = CameraPosition(
//       target: LatLng(double.parse(ordersModel.addressLat!),
//           double.parse(ordersModel.addressLong!)),
//       zoom: 12.4746,
//     );

//     markers.add(Marker(
//         markerId: const MarkerId("current"),
//         position: LatLng(double.parse(ordersModel.addressLat!),
//             double.parse(ordersModel.addressLong!))));
//   }

//   initPolyline() async {
//     destlat = double.parse(ordersModel.addressLat!);
//     destlong = double.parse(ordersModel.addressLong!);
//     await Future.delayed(const Duration(seconds: 1));
//     // polylineSet = await getPolyLine(currentlat, currentlong, destlat, destlong);
//     update();
//   }

//   getLocationDeliverry() {
//     FirebaseFirestore.instance
//         .collection("delivery")
//         .doc(ordersModel.ordersId)
//         .snapshots()
//         .listen((event) {
//       if (event.exists) {
//         destlat = event.get("lat");
//         destlong = event.get("long");
//         updateMarkerDelivery(destlat!, destlong!);
//       }
//     });
//   }

//   updateMarkerDelivery(double newlat, double newlong) {
//     markers.removeWhere((element) => element.markerId.value == "dest");
//     markers.add(Marker(
//         markerId: const MarkerId("dest"), position: LatLng(newlat, newlong)));
//     update();
//   }

//   @override
//   void onInit() {
//     ordersModel = Get.arguments['ordersmodel'];
//     initalData();
//     getLocationDeliverry();
//     // initPolyline();
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     gmc!.dispose();
//     super.onClose();
//   }
// }
