// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/orders/tracking_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class OrdersTracking extends StatelessWidget {
//   const OrdersTracking({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TracingController controller = Get.put(TracingController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Orders Tracking"),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         child: GetBuilder<TracingController>(
//             builder: ((controller) => HandlingDataView(
//                 statusRequest: controller.statusRequest,
//                 widget: Column(children: [
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 10),
//                       width: double.infinity,
//                       child: GoogleMap(
//                         polylines: controller.polylineSet,
//                         mapType: MapType.normal,
//                         markers: controller.markers.toSet(),
//                         initialCameraPosition: controller.cameraPosition!,
//                         onMapCreated: (GoogleMapController controllermap) {
//                           controller.gmc = controllermap;
//                         },
//                       ),
//                     ),
//                   ),
//                 ])))),
//       ),
//     );
//   }
// }
