
import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lekkiapp/UI/updateProperties.dart';
import 'package:lekkiapp/core/models/get_property_model.dart';
import 'package:lekkiapp/utilities/gallery.dart';


class PropertyDetails extends StatefulWidget {
  final PropertyData home;
  const PropertyDetails({Key? key, required this.home}) : super(key: key);

  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          Padding(
            padding: EdgeInsets.only(top: 68.0.w),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                  
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        
          Container(
            height: 309.h,
            width: 375.w,
            child: Gallery(data: widget.home),
            ),
             Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.home.description.toString(),
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                 
                    fontFamily: "Lato"),
              ),
            ),
          ),
          
        
        
         
        
       
        
          
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
                Text(
                  widget.home.bedroom.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                Text(
                  "Bedroom",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Lato"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
                Text(
                  widget.home.bathroom.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                Text(
                 "Bathroom",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
              ],
            ),
            
            
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
                Text(
                  widget.home.sittingRoom.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                Text(
                 "Sitting Room",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
              ],
            ),
            
            
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
                Text(
                  widget.home.kitchen.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                Text(
                 "Kitchen",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
              ],
            ),
            
            
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
                Text(
                  widget.home.toilet.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                Text(
                 "Toilet",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
              ],
            ),
            
            
            
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
                 Text(
                 "Property Owner",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                Text(
                  widget.home.propertyOwner.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
               
              ],
            ),
            
            
            
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
               
                Text(
                 "Property valid from",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
                 SizedBox(width: 12.w),
                 Text(
                  widget.home.validFrom.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
              ],
            ),
            
            
            
          ),
            Padding(
            padding: EdgeInsets.only(left: 16.0.w, top: 27.w, bottom: 16.w),
            child: Row(
              children: [
               
                Text(
                 "To",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),

                 SizedBox(width: 12.w),
                 Text(
                  widget.home.validTo.toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                   
                      fontFamily: "Lato"),
                ),
              ],
            ),
            
            
            
          ),
            SizedBox(height: 40,),
          Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdateProperty(home: widget.home,)));
              },
              child: Center(
                  child: Text(
                "Update Property",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
          SizedBox(height: 30,),
         
              ],
            ),
        ));
  }
}
