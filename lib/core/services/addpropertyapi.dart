import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:lekkiapp/core/services/appurl.dart';
import 'package:http/http.dart' as http;

class UploadPropertyApi {
  final client = http.Client();
  List<dynamic> data = [];
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
  }) async {
    final Uri uri = Uri.parse(ApiRoutes.AddProperty);
    print(uri);
    final http.Response response = await client.post(uri,
        body: jsonEncode({
          "address": address,
          "type": type,
          "bedroom": bedroom,
          "sittingRoom": sittingroom,
          "kitchen": kitchen,
          "bathroom": bathroom,
          "toilet": toilet,
          "propertyOwner": propertyowner,
          "description": description,
          "validFrom": validfrom,
          "validTo": validto,
          "images": data,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });
    final statusCode = response.statusCode;
    final body = response.body;
 
   

    if (statusCode <= 300) {
      print(body);
   
      print(statusCode);

      return body;
    } else {
  
      print(statusCode);
      print(body);
    }
  }

  Future uploadProfilePicture(String path) async {
    final Uri uri = Uri.parse(ApiRoutes.UploadImage);
    print(uri);
    var headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    var request = http.MultipartRequest(
      'POST',
      uri,
    );
    request.headers.addAll(headers);

    final file = await http.MultipartFile.fromPath(
      'file',
      path,
    );

    print("-----------------foto Updated");

    request.files.add(file);
    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    final body = response.body;
    if (response.statusCode <= 300) {
      print(response);
      print(response.statusCode);

      final Map<String, dynamic> parsedValue = await json.decode(body);

      var newdata = parsedValue['data'];

      print(response.statusCode);

      print("foto Updated");
      print(body);
      print("foto Updated1111111111111111111");
      print(data);
      data.add(newdata);
      print(data);
      return newdata;

      // print(responseData);
    } else {
      print(response.reasonPhrase);
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
  }) async {
    final Uri uri = Uri.parse("https://sfc-lekki-property.herokuapp.com/api/v1/lekki/property/$id");
    print(uri);
    final http.Response response = await client.patch(uri,
        body: jsonEncode({
      
          "bedroom": bedroom,
          "sittingRoom": sittingroom,
          "kitchen": kitchen,
          "bathroom": bathroom,
          "toilet": toilet,
          
          "description": description,
         
          "validTo": validto,
          "images": data,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });
    final statusCode = response.statusCode;
    final body = response.body;

    //   print(data);
    if (statusCode <= 300) {
      print(body);
      //  print(message);
      print(statusCode);

      return body;
    } else {
      //print(message);
      print(statusCode);
      print(body);
    }
  }

}
