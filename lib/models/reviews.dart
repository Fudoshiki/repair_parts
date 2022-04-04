class Reviews {
  String? id;
  int? idInt;
  String? receiverId;
  String? authorId;
  String? orderId;
  int? rating;
  dynamic text;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Reviews({
    this.id,
    this.idInt,
    this.receiverId,
    this.authorId,
    this.orderId,
    this.rating,
    this.text,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Reviews.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    receiverId = json['receiverId'] as String?;
    authorId = json['authorId'] as String?;
    orderId = json['orderId'] as String?;
    rating = json['rating'] as int?;
    text = json['text'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['receiverId'] = receiverId;
    json['authorId'] = authorId;
    json['orderId'] = orderId;
    json['rating'] = rating;
    json['text'] = text;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    return json;
  }
}
