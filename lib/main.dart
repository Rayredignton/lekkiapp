
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lekkiapp/UI/welcome.dart';
import 'package:lekkiapp/core/providers/add_propertyprovider.dart';
import 'package:lekkiapp/core/providers/get_propertyprovider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<AddPropertyProvider>(
            create: (context) => AddPropertyProvider()),
             ChangeNotifierProvider<PropertyProvider>(
            create: (context) => PropertyProvider()),
      ],
      child: ScreenUtilInit(
        builder: () {
          return MaterialApp(
            title: 'LekkiApp',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
             
              primarySwatch: Colors.blue,
            ),
            home: Welcome()
          );
          
        },
        designSize: Size(375, 812),
      ),
    );
  }
}
