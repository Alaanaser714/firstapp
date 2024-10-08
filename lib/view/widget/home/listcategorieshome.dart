// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/home_controller.dart';
// import 'package:flutter_firstapplication/core/constant/color.dart';
// import 'package:flutter_firstapplication/core/funcations/translatedatabase.dart';
// import 'package:flutter_firstapplication/date/model/categories.dart';
// import 'package:flutter_firstapplication/linkApi.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

// class ListCategoriesHome extends GetView<HomeControllerImp> {
//   const ListCategoriesHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: ListView.separated(
//         separatorBuilder: (context, index) => const SizedBox(width: 10),
//         itemCount: controller.categories.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Categories(
//             i: index,
//             categoriesModel:
//                 CategoriesModel.fromJson(controller.categories[index]),
//           );
//         },
//       ),
//     );
//   }
// }

// class Categories extends GetView<HomeControllerImp> {
//   final CategoriesModel categoriesModel;
//   final int? i;
//   const Categories({super.key, required this.categoriesModel, required this.i});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         controller.goToItems(controller.categories, i! , categoriesModel.categoriesId!);
//       },
//       child: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 color: AppColor.thirdColor,
//                 borderRadius: BorderRadius.circular(20)),
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             height: 70,
//             width: 70,
//             child: SvgPicture.network(
//                 "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
//                 color: AppColor.secondColor),
//           ),
//           Text(
//             "${translateDatabase(categoriesModel.categoriesNamaAr, categoriesModel.categoriesName)}",
//             style: const TextStyle(fontSize: 13, color: AppColor.black),
//           )
//         ],
//       ),
//     );
//   }
// }