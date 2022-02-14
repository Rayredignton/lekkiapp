import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lekkiapp/UI/search_properties.dart';
import 'package:lekkiapp/UI/view_properties.dart';
import 'package:lekkiapp/UI/upload_property.dart';

import 'filtered_properties.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 220,),
          Center(
            child: Text(
              "Welcome to Lekki Properties",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
           SizedBox(height: 120,),
          Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UploadProperty()));
              },
              child: Center(
                  child: Text(
                "Upload Property",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
           SizedBox(height: 50,),
          Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ViewProperties()));
              },
              child: Center(
                  child: Text(
                "View All Properties",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
          SizedBox(height: 50,),
           Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FilteredProperties()));
              },
              child: Center(
                  child: Text(
                "filter Property",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
            SizedBox(height: 50,),
          Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
              child: Center(
                  child: Text(
                "Search Properties",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
