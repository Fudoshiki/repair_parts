import 'user.dart';

class DataLogin {
  Payload? payload;
  User? user;
  DataLogin({
    this.payload,
    this.user,
  });
  DataLogin.fromJson(Map<String, dynamic> json) {
    payload = (json['payload'] as Map<String,dynamic>?) != null ? Payload.fromJson(json['payload'] as Map<String,dynamic>) : null;
    user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['payload'] = payload?.toJson();
    json['user'] = user?.toJson();
    return json;
  }
}

class Payload {
  String? token;

  Payload({
    this.token,
  });

  Payload.fromJson(Map<String, dynamic> json) {
    token = json['token'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['token'] = token;
    return json;
  }
}



