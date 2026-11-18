import 'dart:convert';

PasLoginModel pasLoginModelFromJson(String str) => PasLoginModel.fromJson(json.decode(str));

String pasLoginModelToJson(PasLoginModel data) => json.encode(data.toJson());

class PasLoginModel {
    final bool status;
    final String message;
    final String token;

    PasLoginModel({
        required this.status,
        required this.message,
        required this.token,
    });

    factory PasLoginModel.fromJson(Map<String, dynamic> json) => PasLoginModel(
        status: json["status"],
        message: json["message"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "token": token,
    };
}