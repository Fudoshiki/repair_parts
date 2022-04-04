import 'files.dart';

class RowsMessageChat {
  String? id;
  int? idInt;
  String? authorId;
  String? chatId;
  String? text;
  bool? isUnread;
  dynamic params;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<dynamic>? views;
  List<Files>? files;

  RowsMessageChat({
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
    this.views,
    this.files,
  });

  RowsMessageChat.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    authorId = json['authorId'] as String?;
    chatId = json['chatId'] as String?;
    text = json['text'] as String?;
    isUnread = json['isUnread'] as bool?;
    params = json['params'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    views = json['views'] as List?;
    files =  (json['files'] as List?)?.map((dynamic e) => Files.fromJson(e['file']  as Map<String,dynamic>)).toList();
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
    json['views'] = views;
    json['files'] = files?.map((e) => e.toJson()).toList();
    return json;
  }
}