import 'seller.dart';

class NotificationData {
  String? orderRequestId;
  String? idOrder;
  Seller? seller;

  NotificationData({
    this.orderRequestId,
    this.idOrder,
    this.seller,
  });

  NotificationData.fromJson(Map<String, dynamic> json) {
    orderRequestId = json['orderRequestId'] as String?;
    idOrder = json['idOrder'] as String?;
    seller = (json['seller'] as Map<String,dynamic>?) != null ? Seller.fromJson(json['seller'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['orderRequestId'] = orderRequestId;
    json['idOrder'] = idOrder;
    json['seller'] = seller?.toJson();
    return json;
  }
}
