import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lekkiapp/core/models/get_property_model.dart';
import 'package:lekkiapp/core/services/get_propertyapi.dart';

class PropertyProvider extends ChangeNotifier {
  final PropertyAPI _propertyAPI = PropertyAPI();

  Future fetchProperty({required BuildContext context}) async {
    try {
      var response = await _propertyAPI.fetchPost();
  
      var modelledData = EstateModel.fromJson(jsonDecode(response));
    
      var postCode = modelledData.status;
      var postdata = modelledData.data;
      if (postCode == "success") {
  
        return postdata;
      }
    } catch (e) {
      print(e);
    }
  }

  Future filterProperty({
    required BuildContext context,
    required final int sitting,
   required final int kitchen,
  }) async {
    try {
      var response =
          await _propertyAPI.filteredPost(sitting: sitting, kitchen: kitchen);
   
      var modelledData = EstateModel.fromJson(jsonDecode(response));
   
      var postCode = modelledData.status;
      var postdata = modelledData.data;
      if (postCode == "success") {
       
        return postdata;
      }
    } catch (e) {
      print(e);
    }
  }
}
