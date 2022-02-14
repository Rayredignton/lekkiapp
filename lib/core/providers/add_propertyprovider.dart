import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:lekkiapp/core/services/addpropertyapi.dart';

class AddPropertyProvider extends ChangeNotifier {
  final UploadPropertyApi _accountAPI = UploadPropertyApi();

//  List<File>?  _selectedPostImage;
  List<File>? imageFileList = [];
  List<File>? get selectedPostImage => imageFileList;
  String? _uploadedImageUrl;
  String? get uploadedImageUrl => _uploadedImageUrl;

  Future<File?> pickPostImage() async {
    final _image = await ImagePicker()
        .pickMultiImage(maxWidth: 600, maxHeight: 600, imageQuality: 50);
    if (_image != null) {
      for (XFile _image in _image) {
        var imagesTemporary = File(_image.path);
        imageFileList!.add(imagesTemporary);
        print(imageFileList);
      }
      notifyListeners();
    }
  }

  // removeImages() {
  //   _selectedPostImage = null;
  //   notifyListeners();
  // }

  Future uploadPicture({
    required BuildContext context,
    required String path,
  }) async {
    try {
      var userData = await _accountAPI.uploadProfilePicture(path);
      print(" fffffffffffff $userData");

      final Map<String, dynamic> parsedValue = await json.decode(userData);
      final userCode = parsedValue['status'];
      final message = parsedValue['message'];

      if (userCode == "success") {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("$message")));
      }
    } catch (error) {
      print(error);
    }
  }

  Future addProperty({
    required BuildContext context,
    required String address,
    required String type,
    required String bedroom,
    required String sittingroom,
    required String kitchen,
    required String bathroom,
    required String toilet,
    required String propertyowner,
    required String description,
    required String validfrom,
    required String validto,

    // ignore: non_constant_identifier_names
  }) async {
    try {
      var userData = await _accountAPI.addProperty(
        context: context,
        address: address,
        type: type,
        bedroom: bedroom,
        sittingroom: sittingroom,
        kitchen: kitchen,
        bathroom: bathroom,
        toilet: toilet,
        propertyowner: propertyowner,
        description: description,
        validfrom: validfrom,
        validto: validto,
      );
      final Map<String, dynamic> parsedValue = await json.decode(userData);
      final status = parsedValue['code'];

      if (status == 200) {}
    } catch (error) {
      print(error);
    }
  }

  Future updateProperty({
    required BuildContext context,

    required String bedroom,
    required String sittingroom,
    required String kitchen,
    required String bathroom,
    required String toilet,
 
    required String description,

    required String validto,
    required String id,

    // ignore: non_constant_identifier_names
  }) async {
    try {
      var userData = await _accountAPI.updateProperty(
          context: context,
   
          bedroom: bedroom,
          sittingroom: sittingroom,
          kitchen: kitchen,
          bathroom: bathroom,
          toilet: toilet,
       
          description: description,
     
          validto: validto,
          id: id);
      final Map<String, dynamic> parsedValue = await json.decode(userData);
      final status = parsedValue['code'];

      if (status == 200) {}
    } catch (error) {
      print(error);
    }
  }
}
