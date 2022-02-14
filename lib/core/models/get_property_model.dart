// To parse this JSON data, do
//
//     final estateModel = estateModelFromJson(jsonString);

import 'dart:convert';

EstateModel estateModelFromJson(String str) => EstateModel.fromJson(json.decode(str));

String estateModelToJson(EstateModel data) => json.encode(data.toJson());

class EstateModel {
    EstateModel(
        this.status,
        this.code,
        this.message,
        this.data,
    );

    String status;
    int code;
    String message;
    List<PropertyData> data;

    factory EstateModel.fromJson(Map<String, dynamic> json) => EstateModel(
      json["status"],
        json["code"],
         json["message"],
       List<PropertyData>.from(json["data"].map((x) => PropertyData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class PropertyData {
    PropertyData(
        this.id,
        this.address,
        this.type,
        this.bedroom,
        this.sittingRoom,
        this.kitchen,
        this.bathroom,
        this.toilet,
        this.propertyOwner,
        this.description,
        this.validFrom,
        this.validTo,
       this.images,
        this.createdAt,
        this.updatedAt,
        this.v,
    );

    String id;
    String address;
    String type;
    int bedroom;
    int sittingRoom;
    int kitchen;
    int bathroom;
    int toilet;
    String propertyOwner;
    String description;
    String validFrom;
    String validTo;
    List<Image>? images;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory PropertyData.fromJson(Map<String, dynamic> json) => PropertyData(
       json["_id"],
         json["address"],
         json["type"],
      json["bedroom"],
      json["sittingRoom"],
      json["kitchen"],
        json["bathroom"],
        json["toilet"],
          json["propertyOwner"],
         json["description"],
       json["validFrom"],
        json["validTo"],
        List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
         DateTime.parse(json["createdAt"]),
         DateTime.parse(json["updatedAt"]),
         json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "address": address,
        "type": type,
        "bedroom": bedroom,
        "sittingRoom": sittingRoom,
        "kitchen": kitchen,
        "bathroom": bathroom,
        "toilet": toilet,
        "propertyOwner": propertyOwner,
        "description": description,

     //   "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

class Image {
    Image(
        this.fieldname,
        this.originalname,
        this.encoding,
        this.mimetype,
        this.path,
        this.size,
        this.filename,
    );

    String? fieldname;
    String? originalname;
    String? encoding;
    String? mimetype;
    String? path;
    int? size;
    String? filename;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
         json["fieldname"],
         json["originalname"],
         json["encoding"],
         json["mimetype"],
         json["path"],
        json["size"],
       json["filename"],
    );

    Map<String, dynamic> toJson() => {
        "fieldname": fieldname,
        "originalname": originalname,
        "encoding": encoding,
        "mimetype": mimetype,
        "path": path,
        "size": size,
        "filename": filename,
    };
}
