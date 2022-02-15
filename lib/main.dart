import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'grid_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/grid',
      getPages: [
        GetPage(name: '/grid', page: ()=> const GridPage())
      ],
    );
  }
}

