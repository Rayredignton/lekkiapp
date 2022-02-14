
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lekkiapp/core/models/get_property_model.dart';
import 'package:lekkiapp/core/providers/add_propertyprovider.dart';
import 'package:provider/provider.dart';
class UpdateProperty extends StatefulWidget {
  final PropertyData home;
 UpdateProperty({ Key? key, required this.home }) : super(key: key);

  @override
  _UpdatePropertyState createState() => _UpdatePropertyState();
}

class _UpdatePropertyState extends State<UpdateProperty> {



  final bedroomController = TextEditingController();

  final sittingRoomController = TextEditingController();

  final kitchenController = TextEditingController();

  final bathroomController = TextEditingController();

  final toiletController = TextEditingController();


  final descriptionController = TextEditingController();



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
            "Update Property",
            style: TextStyle(
              fontSize: 24.sp,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
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
                  hintText: widget.home.bedroom.toString(),
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
                  hintText: widget.home.sittingRoom.toString(),
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
                  hintText: widget.home.kitchen.toString() ,
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
                  hintText: widget.home.bathroom.toString(),
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
                  hintText: widget.home.toilet.toString(),
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
                  hintText: widget.home.description,
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
                  hintText: widget.home.validTo,
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
                addpropertyProvider(false).updateProperty(
                    context: context,
                   
                    bedroom: bedroomController.text,
                    sittingroom: sittingRoomController.text,
                    kitchen: kitchenController.text,
                    bathroom: bathroomController.text,
                    toilet: toiletController.text,
                  
                    description: descriptionController.text,
                 
                    validto: validToController.text,
                    id: widget.home.id.toString()
                    );
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
          SizedBox(
            height: 24.w,
          ),
        ],
      ),
    );
  }
}