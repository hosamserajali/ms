import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_project/core/localization/changelocal.dart';
import 'package:maps_project/core/localization/translation.dart';
import 'package:maps_project/core/services/services.dart';
import 'package:maps_project/routes.dart';


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
      theme: controller.appTheme, 
      // routes: routes,
      getPages: routes,
    );
  }
}