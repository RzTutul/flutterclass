import 'package:firstapp/state_management/counter_page.dart';
import 'package:firstapp/state_management/counter_page_with_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'api_call/page/AlbumPage.dart';
import 'api_call/page/post_page.dart';
import 'contract_page.dart';
import 'image_stoage/user_profile.dart';

void main() async{

  await GetStorage.init();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light
      ),

      home: UserProfile(),
    );
  }
}



