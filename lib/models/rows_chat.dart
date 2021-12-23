import 'last_message.dart';
import 'members.dart';

class RowsChat {
  String? id;
  int? idInt;
  String? authorId;
  dynamic name;
  int? type;
  String? lastMessageCreatedAt;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<Members>? members;
  int? unreadMessagesCount;
  LastMessage? lastMessage;

  RowsChat({
    this.id,
    this.idInt,
    this.authorId,
    this.name,
    this.type,
    this.lastMessageCreatedAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.members,
    this.unreadMessagesCount,
    this.lastMessage,
  });

  RowsChat.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    authorId = json['authorId'] as String?;
    name = json['name'];
    type = json['type'] as int?;
    lastMessageCreatedAt = json['lastMessageCreatedAt'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    members = (json['members'] as List?)?.map((dynamic e) => Members.fromJson(e as Map<String,dynamic>)).toList();
    unreadMessagesCount = json['unreadMessagesCount'] as int?;
    lastMessage = (json['lastMessage'] as Map<String,dynamic>?) != null ? LastMessage.fromJson(json['lastMessage'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['authorId'] = authorId;
    json['name'] = name;
    json['type'] = type;
    json['lastMessageCreatedAt'] = lastMessageCreatedAt;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['members'] = members?.map((e) => e.toJson()).toList();
    json['unreadMessagesCount'] = unreadMessagesCount;
    json['lastMessage'] = lastMessage?.toJson();
    return json;
  }
}

