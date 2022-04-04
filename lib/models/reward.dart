class Reward {
  String? id;
  int? idInt;
  double? amount;
  String? sellerId;
  String? orderId;
  bool? supplierPaid;
  dynamic givenAtMonth;
  dynamic givenAt;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Reward({
    this.id,
    this.idInt,
    this.amount,
    this.sellerId,
    this.orderId,
    this.supplierPaid,
    this.givenAtMonth,
    this.givenAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Reward.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    amount = json['amount'] as double?;
    sellerId = json['sellerId'] as String?;
    orderId = json['orderId'] as String?;
    supplierPaid = json['supplierPaid'] as bool?;
    givenAtMonth = json['givenAtMonth'];
    givenAt = json['givenAt'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['amount'] = amount;
    json['sellerId'] = sellerId;
    json['orderId'] = orderId;
    json['supplierPaid'] = supplierPaid;
    json['givenAtMonth'] = givenAtMonth;
    json['givenAt'] = givenAt;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    return json;
  }
}
