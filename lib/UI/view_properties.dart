 import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lekkiapp/UI/property_details.dart';
import 'package:lekkiapp/core/models/get_property_model.dart';
import 'package:lekkiapp/core/providers/get_propertyprovider.dart';
import 'package:provider/provider.dart';



class ViewProperties extends StatefulWidget {
  const ViewProperties({Key? key}) : super(key: key);

  @override
  _ViewPropertiesState createState() => _ViewPropertiesState();
}

class _ViewPropertiesState extends State<ViewProperties> {
 
  @override
  Widget build(BuildContext context) {
    PropertyProvider propertyProvider() =>
        Provider.of<PropertyProvider>(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 34.0.w, bottom: 24.w),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 26.sp,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 89.0.w,
                  ),
                  child: Text(
                    "Properties",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          
         
          
                 FutureBuilder(
                future: propertyProvider().fetchProperty(context: context),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    var _snapshot = snapshot.data as List;
                    return ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: _snapshot.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          PropertyData propertyData = _snapshot[index];
                          return propertyData.images!.isNotEmpty
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                        bottom: 5.w,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                propertyData.type,
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                softWrap: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PropertyDetails(
                                                      home: propertyData,
                                                    )));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 24.w),
                                        child: Container(
                                          height: 154.h,
                                          width: 343.w,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16.0.w),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0.r),
                                            image: DecorationImage(
                                              image: NetworkImage(propertyData
                                                  .images![0].path!),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                                
                              : Container();
                        });
                  }
                }),
          SizedBox(
            height: 34.h,
          ),
        ]),
      ),
    );
  }
}
