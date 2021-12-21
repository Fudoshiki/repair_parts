import 'counters.dart';
import 'current_role.dart';
import 'user.dart';

class DataProfile {
  User? user;
  CurrentRole? currentRole;
  Counters? counters;

  DataProfile({
    this.user,
    this.currentRole,
  });

  DataProfile.fromJson(Map<String, dynamic> json) {
    user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;
    currentRole = (json['currentRole'] as Map<String,dynamic>?) != null ? CurrentRole.fromJson(json['currentRole'] as Map<String,dynamic>) : null;
    counters=(json['counters'] as Map<String,dynamic>?)!=null?Counters.fromJson(json['counters']as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user?.toJson();
    json['currentRole'] = currentRole?.toJson();
    json['counters']=counters?.toJson();
    return json;
  }
}



