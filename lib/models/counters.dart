class Counters {
  int? orderRequestsCount;
  int? ordersCount;
  int? refundsCount;
  int? receivedComplaintsCount;
  int? sentComplaintsCount;

  Counters({
    this.orderRequestsCount,
    this.ordersCount,
    this.refundsCount,
    this.receivedComplaintsCount,
    this.sentComplaintsCount,
  });

  Counters.fromJson(Map<String, dynamic> json) {
    orderRequestsCount = json['orderRequestsCount'] as int?;
    ordersCount = json['ordersCount'] as int?;
    refundsCount = json['refundsCount'] as int?;
    receivedComplaintsCount = json['receivedComplaintsCount'] as int?;
    sentComplaintsCount = json['sentComplaintsCount'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['orderRequestsCount'] = orderRequestsCount;
    json['ordersCount'] = ordersCount;
    json['refundsCount'] = refundsCount;
    json['receivedComplaintsCount'] = receivedComplaintsCount;
    json['sentComplaintsCount'] = sentComplaintsCount;
    return json;
  }
}