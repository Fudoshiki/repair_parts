class DataNotifications {
  String? idOrder;
  String? orderRequestId;
  int? refundSum;

  DataNotifications({
    this.idOrder,
    this.orderRequestId,
    this.refundSum,
  });

  DataNotifications.fromJson(Map<String, dynamic> json) {
    idOrder = json['idOrder'] as String?;
    orderRequestId = json['orderRequestId'] as String?;
    refundSum = json['refundSum'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['idOrder'] = idOrder;
    json['orderRequestId'] = orderRequestId;
    json['refundSum'] = refundSum;
    return json;
  }
}