import 'package:firstapp/state_management/counter_page.dart';
import 'package:firstapp/state_management/counter_page_with_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'api_call/page/AlbumPage.dart';
import 'api_call/page/post_page.dart';
import 'contract_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PostPage(),
    );
  }
}



