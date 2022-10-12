// To parse this JSON data, do
//
//     final place = placeFromJson(jsonString);

import 'dart:convert';

List<Place> placeFromJson(String str) => List<Place>.from(json.decode(str).map((x) => Place.fromJson(x)));

String placeToJson(List<Place> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Place {
    Place({
   required this.instancePath,
   required this.schemaPath,
   required this.keyword,
   required this.params,
   required this.message,
    });

    String instancePath;
    String schemaPath;
    String keyword;
    Params params;
    String message;

    factory Place.fromJson(Map<String, dynamic> json) => Place(
        instancePath: json["instancePath"],
        schemaPath: json["schemaPath"],
        keyword: json["keyword"],
        params: Params.fromJson(json["params"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "instancePath": instancePath,
        "schemaPath": schemaPath,
        "keyword": keyword,
        "params": params.toJson(),
        "message": message,
    };
}

class Params {
    Params({
      required this.lat,
      required this.long,
      required this.kms,
    });

    String lat;
    String long;
    String kms;

    factory Params.fromJson(Map<String, dynamic> json) => Params(
        lat: json["lat"],
        long: json["long"],
        kms: json["kms"],
    );

     Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
        "kms": kms,
    };
}