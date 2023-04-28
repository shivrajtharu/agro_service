// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
    required this.msg,
    required this.data,
  });

  String msg;
  List<Datum> data;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    msg: json["msg"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.active_status,
    required this.id,
    required this.fullname,
    required this.email,
    required this.userName,
    required this.password,
    required this.address,
    required this.v,
  });
  bool active_status;
  String id;
  String fullname;
  String email;
  String userName;
  String password;
  String address;
  int v;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    active_status: true,
    id: json["_id"],
    fullname: json["fullname"],
    email: json["email"],
    userName: json["userName"],
    password: json["password"],
    address: json["address"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    'true': active_status,
    "_id": id,
    "fullname": fullname,
    "email": email,
    "userName": userName,
    "password": password,
    "address": address,
    "__v": v,
  };
}
