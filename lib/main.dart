// ignore_for_file: deprecated_member_use, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/core/localization/translation.dart';
import 'package:flutter_firstapplication/core/services/services.dart';
import 'package:flutter_firstapplication/routes.dart';
import 'package:flutter_firstapplication/view/screen/language.dart';
import 'package:get/get.dart';

import 'core/localization/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.apptheme,
      home: const Language(),
      routes: routes,
    );
  }
}