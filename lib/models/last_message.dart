import 'files.dart';

class LastMessage {
  String? id;
  int? idInt;
  String? authorId;
  String? chatId;
  dynamic text;
  bool? isUnread;
  dynamic params;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<Files>? files;

  LastMessage({
    this.id,
    this.idInt,
    this.authorId,
    this.chatId,
    this.text,
    this.isUnread,
    this.params,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.files,
  });

  LastMessage.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    authorId = json['authorId'] as String?;
    chatId = json['chatId'] as String?;
    text = json['text'];
    isUnread = json['isUnread'] as bool?;
    params = json['params'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    files = (json['files'] as List?)?.map((dynamic e) => Files.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['authorId'] = authorId;
    json['chatId'] = chatId;
    json['text'] = text;
    json['isUnread'] = isUnread;
    json['params'] = params;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['files'] = files?.map((e) => e.toJson()).toList();
    return json;
  }
}

