import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lekkiapp/UI/property_details.dart';
import 'package:lekkiapp/core/models/get_property_model.dart';
import 'package:lekkiapp/core/providers/get_propertyprovider.dart';
import 'package:provider/provider.dart';

class FilteredProperties extends StatefulWidget {
  const FilteredProperties({ Key? key }) : super(key: key);

  @override
  _FilteredPropertiesState createState() => _FilteredPropertiesState();
}

class _FilteredPropertiesState extends State<FilteredProperties> {

  final sittingController = TextEditingController(text: '1');

  final kitchenController = TextEditingController(text: '1');

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
          Text(
            "filter by amount of kitchen and sitting room",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: sittingController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "amount of sitting rooms",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: kitchenController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "amount of kitchen",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                
                
                propertyProvider().filterProperty(
                    context: context,
                    sitting: int.parse(sittingController.text),
                    kitchen: int.parse(kitchenController.text) );
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
          
            FutureBuilder(
                future: propertyProvider().filterProperty(context: context, kitchen: int.parse(kitchenController.text), sitting: int.parse(sittingController.text)),
               
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
