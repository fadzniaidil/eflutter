// To parse this JSON data, do
//
//     final modelData = modelDataFromJson(jsonString);

import 'dart:convert';

ModelData modelDataFromJson(String str) => ModelData.fromJson(json.decode(str));

String modelDataToJson(ModelData data) => json.encode(data.toJson());

class ModelData {
  ModelData({
    required this.data,
    required this.status,
    required this.message,
  });

  Data data;
  bool status;
  String message;

  factory ModelData.fromJson(Map<String, dynamic> json) => ModelData(
        data: Data.fromJson(json["data"]),
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "status": status,
        "message": message,
      };
}

class Data {
  Data({
    required this.endDate,
    required this.location,
    required this.totalDay,
    required this.startDate,
    required this.courseName,
    required this.participant,
  });

  DateTime endDate;
  Location location;
  int totalDay;
  DateTime startDate;
  String courseName;
  List<Participant> participant;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        endDate: DateTime.parse(json["end_date"]),
        location: Location.fromJson(json["location"]),
        totalDay: json["total_day"],
        startDate: DateTime.parse(json["start_date"]),
        courseName: json["course_name"],
        participant: List<Participant>.from(
            json["participant"].map((x) => Participant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "end_date": endDate.toIso8601String(),
        "location": location.toJson(),
        "total_day": totalDay,
        "start_date": startDate.toIso8601String(),
        "course_name": courseName,
        "participant": List<dynamic>.from(participant.map((x) => x.toJson())),
      };
}

class Location {
  Location({
    required this.lat,
    required this.lng,
    required this.locationName,
  });

  double lat;
  double lng;
  String locationName;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
        locationName: json["location_name"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
        "location_name": locationName,
      };
}

class Participant {
  Participant({
    required this.name,
    required this.image,
  });

  String name;
  String image;

  factory Participant.fromJson(Map<String, dynamic> json) => Participant(
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };
}
