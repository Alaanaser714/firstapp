// // ignore_for_file: use_super_parameters, unused_local_variable, unnecessary_string_interpolations

// import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/home_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/date/model/itemsmodel.dart';
// import 'package:flutter_firstapplication/linkApi.dart';
// import 'package:flutter_firstapplication/view/widget/customappbar.dart';
// import 'package:flutter_firstapplication/view/widget/home/customcardhome.dart';
// import 'package:flutter_firstapplication/view/widget/home/customtitlehome.dart';
// import 'package:flutter_firstapplication/view/widget/home/listcategorieshome.dart';
// import 'package:flutter_firstapplication/view/widget/home/listitemshome.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     HomeControllerImp cotroller = Get.put(HomeControllerImp());
//     return GetBuilder<HomeControllerImp>(
//         builder: (controller) => Container(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: ListView(
//               children: [
//                 CustomAppBar(
//                   mycontroller: controller.search!,
//                   titleappbar: "Find Product",
//                   // onPressedIcon: () {},
//                   onPressedSearch: () {
//                     controller.onSearchItems();
//                   },
//                   onChanged: (val) {
//                     controller.checkSearch(val);
//                   },
//                   onPressedIconFavorite: () {
//                     Get.toNamed(AppRoute.myfavroite);
//                   },
//                 ),
//                 HandlingDataView(
//                     statusRequest: controller.statusRequest,
//                     widget: !controller.isSearch
//                         ?  Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
                            
//                               CustomCardHome(
//                                   title: "${controller.titlehomecard}",
//                                   body: "${controller.bodyhomecard}"),
//                               const CustomTitleHome(title: "Categories"),
//                               const ListCategoriesHome(),
//                               const CustomTitleHome(title: "Top Selling"),
//                               const ListItemsHome(),
//                             ],
//                           )
//                         : ListItemsSearch(listdatamodel: controller.listdata))
//               ],
//             )));
//   }
// }

// class ListItemsSearch extends GetView<HomeControllerImp> {
//   final List<ItemsModel> listdatamodel;
//   const ListItemsSearch({Key? key, required this.listdatamodel})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: listdatamodel.length,
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) {
//           return InkWell(
//             onTap: () {
//               controller.goToPageProductDetails(listdatamodel[index]);
//             },
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: 20),
//               child: Card(
//                   child: Container(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                         child: CachedNetworkImage(
//                             imageUrl:
//                                 "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
//                     Expanded(
//                         flex: 2,
//                         child: ListTile(
//                           title: Text(listdatamodel[index].itemsName!),
//                           subtitle: Text(listdatamodel[index].categoriesName!),
//                         )),
//                   ],
//                 ),
//               )),
//             ),
//           );
//         });
//   }
// }



// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/home_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/linkApi.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(children: [
                          Expanded(
                              child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                hintText: "Find Product",
                                hintStyle: const TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                filled: true,
                                fillColor: Colors.grey[200]),
                          )),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            width: 60,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_active_outlined,
                                  size: 30,
                                  color: Colors.grey[600],
                                )),
                          )
                        ]),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: Stack(children: [
                          Container(
                            alignment: Alignment.center,
                            height: 150,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: const ListTile(
                              title: Text("A summer surprise",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              subtitle: Text("Cashback 20%",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                            ),
                          ),
                          Positioned(
                            top: -20,
                            right: -20,
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: AppColor.secondColor,
                                  borderRadius: BorderRadius.circular(160)),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemCount: controller.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColor.thirdColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 70,
                                  width: 70,
                                  child: SvgPicture.network(
                                    "${AppLink.imagestCategories}/${controller.categories[index]["categories_image"]}",
                                      color: AppColor.secondColor),
                                ),
                                Text(
                                  "${controller.categories[index]['categories_name']}",
                                  style: const TextStyle(
                                      fontSize: 13, color: AppColor.black),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("Product for you",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return Stack(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Image.asset(
                                      "assets/images/2.png",
                                      height: 100,
                                      width: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColor.black.withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 120,
                                    width: 200,
                                  ),
                                  const Positioned(
                                      left: 10,
                                      child: Text(
                                        "Laptop Surface Go 2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ))
                                ],
                              );
                            }),
                      )
                    ],
                  )))),
    );
  }
}
