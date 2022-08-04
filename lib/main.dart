import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:zzzzzzzz/pages/home/home_screen.dart';
import 'package:zzzzzzzz/service/network_service.dart';
import 'package:zzzzzzzz/utils/Binding/HomeBinding.dart';
import 'package:zzzzzzzz/widget/app_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    MultiProvider(
      providers: [
      StreamProvider(
          create: (context) =>
              NetworkService().controller.stream,
          initialData: NetworkStatus.Online,
        ),
        
        ],
        
       child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => AppScaffold(child:HomeScreen()),
          binding: HomeBinding(),
        )
      ],
    ));
  }
}
