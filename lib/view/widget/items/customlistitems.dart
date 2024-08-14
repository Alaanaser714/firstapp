// // ignore_for_file: use_super_parameters

// import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/favorite_controller.dart';
// import 'package:flutter_firstapplication/controller/items_controller.dart';
// import 'package:flutter_firstapplication/core/constant/color.dart';
// import 'package:flutter_firstapplication/core/constant/imagesassets.dart';
// import 'package:flutter_firstapplication/core/funcations/translatedatabase.dart';
// import 'package:flutter_firstapplication/date/model/itemsmodel.dart';
// import 'package:flutter_firstapplication/linkApi.dart';
// import 'package:get/get.dart';

// class CustomListItems extends GetView<ItemsControllerImp> {
//   final ItemsModel itemsModel;
//   // final bool active;
//   const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {
//           controller.goToPageProductDetails(itemsModel);
//         },
//         child: Card(
//           child: Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Hero(
//                         tag: "${itemsModel.itemsId}",
//                         child: CachedNetworkImage(
//                           imageUrl:
//                               "${AppLink.imagestItems}/${itemsModel.itemsImage!}",
//                           height: 100,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                           translateDatabase(
//                               itemsModel.itemsNameAr, itemsModel.itemsName),
//                           style: const TextStyle(
//                               color: AppColor.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold)),
//                          Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                            Text("${controller.deliverytime} Minute", textAlign: TextAlign.center,style: const TextStyle(fontFamily: "sans"),),
//                           Container(
//                             margin: const EdgeInsets.only(top: 10),
                            
//                             child: const Icon(Icons.timer_sharp,color: AppColor.grey,))
                          
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("${itemsModel.itemsPriceDiscount} \$",
//                               style: const TextStyle(
//                                   color: AppColor.primaryColor,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: "sans")),
//                           GetBuilder<FavoriteController>(
//                               builder: (controller) => IconButton(
//                                   onPressed: () {
//                                     if (controller.isFavorite[itemsModel.itemsId] ==
//                                         "1") {
//                                       controller.setFavorite(
//                                           itemsModel.itemsId, "0");
//                                       controller
//                                           .removeFavorite(itemsModel.itemsId!);
//                                     } else {
//                                       controller.setFavorite(
//                                           itemsModel.itemsId, "1");
//                                       controller.addFavorite(itemsModel.itemsId!);
//                                     }
//                                   },
//                                   icon: Icon(
//                                     controller.isFavorite[itemsModel.itemsId] == "1"
//                                         ? Icons.favorite
//                                         : Icons.favorite_border_outlined,
//                                     color: AppColor.primaryColor,
//                                   )))
//                         ],
//                       )
//                     ]),
//               ),
//            if (itemsModel.itemsDiscount != "0")   Positioned(
//                 top: 4,
//                 left: 4,
//                 child: Image.asset(AppImageAsset.saleOne , width: 40,))
//             ],
//           ),
//         ));
//   }
// }

