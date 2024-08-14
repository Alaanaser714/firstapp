
// // ignore_for_file: unused_local_variable, use_super_parameters, body_might_complete_normally_nullable

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/address/adddatails_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:flutter_firstapplication/core/shared/custombutton.dart';
// import 'package:flutter_firstapplication/view/widget/auth/customtextformauth.dart';
// import 'package:get/get.dart';

// class AddressAddDetails extends StatelessWidget {
//   const AddressAddDetails({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     AddAddressDetailsController controller =
//         Get.put(AddAddressDetailsController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('add details address'),
//       ),
//       body: Container(
//           padding: const EdgeInsets.all(15),
//           child: GetBuilder<AddAddressDetailsController>(
//             builder: (controller) => HandlingDataView(
//                 statusRequest: controller.statusRequest,
//                 widget: ListView(children: [
//                   CustomTextFormAuth(
//                       hinttext: "city",
//                       labeltext: "city",
//                       iconData: Icons.location_city,
//                       mycontroller: controller.city,
//                       valid: (val) {},
//                       isNumber: false),
//                   CustomTextFormAuth(
//                       hinttext: "street",
//                       labeltext: "street",
//                       iconData: Icons.streetview,
//                       mycontroller: controller.street,
//                       valid: (val) {},
//                       isNumber: false),
//                   CustomTextFormAuth (
//                       hinttext: "name",
//                       labeltext: "name",
//                       iconData: Icons.near_me,
//                       mycontroller: controller.name,
//                       valid: (val) {},
//                       isNumber: false),
//                   CustomButton(
//                     text: "Add",
//                     onPressed: () {
//                       controller.addAddress() ; 
//                     },
//                   )
//                 ])),
//           )),
//     );
//   }
// }