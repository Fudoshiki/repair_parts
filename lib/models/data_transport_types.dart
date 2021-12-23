import 'marks.dart';

class DataTranspostType {
  int? index;
  String? name;
  String? value;
  String? image;
  List<Marks>? marks;

  DataTranspostType({
    this.index,
    this.name,
    this.value,
    this.image,
    this.marks,
  });

  DataTranspostType.fromJson(Map<String, dynamic> json) {
    index = json['index'] as int?;
    name = json['name'] as String?;
    value = json['value'] as String?;
    image = json['image'] as String?;
    marks = (json['marks'] as List?)?.map((dynamic e) => Marks.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['index'] = index;
    json['name'] = name;
    json['value'] = value;
    json['image'] = image;
    json['marks'] = marks?.map((e) => e.toJson()).toList();
    return json;
  }
}

