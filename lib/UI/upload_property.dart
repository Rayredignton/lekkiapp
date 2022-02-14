import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:lekkiapp/core/providers/add_propertyprovider.dart';
import 'package:provider/provider.dart';

class UploadProperty extends StatefulWidget {
  const UploadProperty({Key? key}) : super(key: key);

  @override
  _UploadPropertyState createState() => _UploadPropertyState();
}

class _UploadPropertyState extends State<UploadProperty> {


  final addressController = TextEditingController();
  final typeController = TextEditingController();
  final bedroomController = TextEditingController();
  final sittingRoomController = TextEditingController();
  final kitchenController = TextEditingController();
  final bathroomController = TextEditingController();
  final toiletController = TextEditingController();
  final propertyOwnerController = TextEditingController();
  final descriptionController = TextEditingController();
  final validFromController = TextEditingController();
  final validToController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AddPropertyProvider addpropertyProvider(bool renderUi) =>
        Provider.of<AddPropertyProvider>(context, listen: renderUi);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        children: [
          SizedBox(
            height: 148,
          ),
          Text(
            "UploadProperty",
            style: TextStyle(
              fontSize: 24.sp,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21,
              bottom: 8,
              top: 24,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Address",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: addressController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "Address",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Type",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: typeController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "Duplex, Semi-Detached, Apartment",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Bedroom",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: bedroomController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "Bedroom",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Sitting room",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: sittingRoomController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "2",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Kitchen",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
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
                  hintText: "1",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Bathroom",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: bathroomController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "3",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Toilet",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: toiletController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "2",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Property Owner",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: propertyOwnerController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "Raymond Aderinto",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: descriptionController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "Description",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Valid From",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: validFromController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "12 Feb 2022",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Valid To",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.w, right: 15.w),
            child: Container(
              width: 311.w,
              height: 72.h,
              child: TextFormField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                controller: validToController,
                decoration: InputDecoration(
                  helperText: ' ',
                  errorStyle: TextStyle(height: 1),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  hintText: "15th May 2025",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                ]),
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
                List<File>? file = addpropertyProvider(false).selectedPostImage;
                addpropertyProvider(false).pickPostImage().whenComplete(() {
                  for (var images in file!) {
                    addpropertyProvider(false).uploadPicture(
                        context: context, path: images.path);
                  }
                });
              },
              child: Center(
                  child: Text(
                "Add Images",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
          SizedBox(
            height: 24.w,
          ),
          Container(
            height: 48,
            width: 343,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {
                addpropertyProvider(false).addProperty(
                    context: context,
                    address: addressController.text,
                    type: typeController.text,
                    bedroom: bedroomController.text,
                    sittingroom: sittingRoomController.text,
                    kitchen: kitchenController.text,
                    bathroom: bathroomController.text,
                    toilet: toiletController.text,
                    propertyowner: propertyOwnerController.text,
                    description: descriptionController.text,
                    validfrom: validFromController.text,
                    validto: validToController.text);
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
          SizedBox(
            height: 24.w,
          ),
        ],
      ),
    );
  }
}
