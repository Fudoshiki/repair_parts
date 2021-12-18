class Role {
  String? id;
  int? idInt;
  String? label;
  bool? favouriteProductsAvailable;
  bool? cartAvailable;
  bool? offersAvailable;
  bool? refundAvailable;
  bool? personalDataAvailable;
  bool? chatAvailable;
  bool? readReviewAvailable;
  bool? writeComplainAvailable;
  bool? writeReviewAvailable;
  bool? manageSellerDataAvailable;
  bool? manageRefundAvailable;
  bool? organizationsAvailable;
  bool? sellerDataAvailable;
  bool? requestProductChangeAvailable;
  bool? manageDigitizationAvailable;
  bool? readComplainAvailable;
  bool? selectCategoriesAvailable;
  bool? manageAllSellerDataAvailable;
  bool? manageAllRefundAvailable;
  bool? moderateOrganizationsAvailable;
  bool? moderateProductChangeAvailable;
  bool? moderateSellerDataAvailable;
  bool? moderateDigitizationAvailable;
  bool? moderateComplainAvailable;
  bool? manageCategoriesAvailable;
  bool? manageAdminsAvailable;
  bool? manageRolesAvailable;
  bool? banAvailable;
  bool? manageEmployeesAvailable;
  bool? exploreAllOrderRequestsAvailable;
  bool? requestOrdersPlusHistoryAvailable;
  bool? manageOrderRequestsAvailable;
  bool? exploreOrderRequestsAndOrdersAvailable;
  bool? suggestOrdersAvailable;
  bool? transportCompanyAvailable;
  bool? manageTransportCompanyAvailable;
  bool? inspectUsersInfoAvailable;
  bool? rewardsAvailable;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Role({
    this.id,
    this.idInt,
    this.label,
    this.favouriteProductsAvailable,
    this.cartAvailable,
    this.offersAvailable,
    this.refundAvailable,
    this.personalDataAvailable,
    this.chatAvailable,
    this.readReviewAvailable,
    this.writeComplainAvailable,
    this.writeReviewAvailable,
    this.manageSellerDataAvailable,
    this.manageRefundAvailable,
    this.organizationsAvailable,
    this.sellerDataAvailable,
    this.requestProductChangeAvailable,
    this.manageDigitizationAvailable,
    this.readComplainAvailable,
    this.selectCategoriesAvailable,
    this.manageAllSellerDataAvailable,
    this.manageAllRefundAvailable,
    this.moderateOrganizationsAvailable,
    this.moderateProductChangeAvailable,
    this.moderateSellerDataAvailable,
    this.moderateDigitizationAvailable,
    this.moderateComplainAvailable,
    this.manageCategoriesAvailable,
    this.manageAdminsAvailable,
    this.manageRolesAvailable,
    this.banAvailable,
    this.manageEmployeesAvailable,
    this.exploreAllOrderRequestsAvailable,
    this.requestOrdersPlusHistoryAvailable,
    this.manageOrderRequestsAvailable,
    this.exploreOrderRequestsAndOrdersAvailable,
    this.suggestOrdersAvailable,
    this.transportCompanyAvailable,
    this.manageTransportCompanyAvailable,
    this.inspectUsersInfoAvailable,
    this.rewardsAvailable,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'] as String?;
    favouriteProductsAvailable = json['favouriteProductsAvailable'] as bool?;
    cartAvailable = json['cartAvailable'] as bool?;
    offersAvailable = json['offersAvailable'] as bool?;
    refundAvailable = json['refundAvailable'] as bool?;
    personalDataAvailable = json['personalDataAvailable'] as bool?;
    chatAvailable = json['chatAvailable'] as bool?;
    readReviewAvailable = json['readReviewAvailable'] as bool?;
    writeComplainAvailable = json['writeComplainAvailable'] as bool?;
    writeReviewAvailable = json['writeReviewAvailable'] as bool?;
    manageSellerDataAvailable = json['manageSellerDataAvailable'] as bool?;
    manageRefundAvailable = json['manageRefundAvailable'] as bool?;
    organizationsAvailable = json['organizationsAvailable'] as bool?;
    sellerDataAvailable = json['sellerDataAvailable'] as bool?;
    requestProductChangeAvailable = json['requestProductChangeAvailable'] as bool?;
    manageDigitizationAvailable = json['manageDigitizationAvailable'] as bool?;
    readComplainAvailable = json['readComplainAvailable'] as bool?;
    selectCategoriesAvailable = json['selectCategoriesAvailable'] as bool?;
    manageAllSellerDataAvailable = json['manageAllSellerDataAvailable'] as bool?;
    manageAllRefundAvailable = json['manageAllRefundAvailable'] as bool?;
    moderateOrganizationsAvailable = json['moderateOrganizationsAvailable'] as bool?;
    moderateProductChangeAvailable = json['moderateProductChangeAvailable'] as bool?;
    moderateSellerDataAvailable = json['moderateSellerDataAvailable'] as bool?;
    moderateDigitizationAvailable = json['moderateDigitizationAvailable'] as bool?;
    moderateComplainAvailable = json['moderateComplainAvailable'] as bool?;
    manageCategoriesAvailable = json['manageCategoriesAvailable'] as bool?;
    manageAdminsAvailable = json['manageAdminsAvailable'] as bool?;
    manageRolesAvailable = json['manageRolesAvailable'] as bool?;
    banAvailable = json['banAvailable'] as bool?;
    manageEmployeesAvailable = json['manageEmployeesAvailable'] as bool?;
    exploreAllOrderRequestsAvailable = json['exploreAllOrderRequestsAvailable'] as bool?;
    requestOrdersPlusHistoryAvailable = json['requestOrdersPlusHistoryAvailable'] as bool?;
    manageOrderRequestsAvailable = json['manageOrderRequestsAvailable'] as bool?;
    exploreOrderRequestsAndOrdersAvailable = json['exploreOrderRequestsAndOrdersAvailable'] as bool?;
    suggestOrdersAvailable = json['suggestOrdersAvailable'] as bool?;
    transportCompanyAvailable = json['transportСompanyAvailable'] as bool?;
    manageTransportCompanyAvailable = json['manageTransportСompanyAvailable'] as bool?;
    inspectUsersInfoAvailable = json['inspectUsersInfoAvailable'] as bool?;
    rewardsAvailable = json['rewardsAvailable'] as bool?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['favouriteProductsAvailable'] = favouriteProductsAvailable;
    json['cartAvailable'] = cartAvailable;
    json['offersAvailable'] = offersAvailable;
    json['refundAvailable'] = refundAvailable;
    json['personalDataAvailable'] = personalDataAvailable;
    json['chatAvailable'] = chatAvailable;
    json['readReviewAvailable'] = readReviewAvailable;
    json['writeComplainAvailable'] = writeComplainAvailable;
    json['writeReviewAvailable'] = writeReviewAvailable;
    json['manageSellerDataAvailable'] = manageSellerDataAvailable;
    json['manageRefundAvailable'] = manageRefundAvailable;
    json['organizationsAvailable'] = organizationsAvailable;
    json['sellerDataAvailable'] = sellerDataAvailable;
    json['requestProductChangeAvailable'] = requestProductChangeAvailable;
    json['manageDigitizationAvailable'] = manageDigitizationAvailable;
    json['readComplainAvailable'] = readComplainAvailable;
    json['selectCategoriesAvailable'] = selectCategoriesAvailable;
    json['manageAllSellerDataAvailable'] = manageAllSellerDataAvailable;
    json['manageAllRefundAvailable'] = manageAllRefundAvailable;
    json['moderateOrganizationsAvailable'] = moderateOrganizationsAvailable;
    json['moderateProductChangeAvailable'] = moderateProductChangeAvailable;
    json['moderateSellerDataAvailable'] = moderateSellerDataAvailable;
    json['moderateDigitizationAvailable'] = moderateDigitizationAvailable;
    json['moderateComplainAvailable'] = moderateComplainAvailable;
    json['manageCategoriesAvailable'] = manageCategoriesAvailable;
    json['manageAdminsAvailable'] = manageAdminsAvailable;
    json['manageRolesAvailable'] = manageRolesAvailable;
    json['banAvailable'] = banAvailable;
    json['manageEmployeesAvailable'] = manageEmployeesAvailable;
    json['exploreAllOrderRequestsAvailable'] = exploreAllOrderRequestsAvailable;
    json['requestOrdersPlusHistoryAvailable'] = requestOrdersPlusHistoryAvailable;
    json['manageOrderRequestsAvailable'] = manageOrderRequestsAvailable;
    json['exploreOrderRequestsAndOrdersAvailable'] = exploreOrderRequestsAndOrdersAvailable;
    json['suggestOrdersAvailable'] = suggestOrdersAvailable;
    json['transportСompanyAvailable'] = transportCompanyAvailable;
    json['manageTransportСompanyAvailable'] = manageTransportCompanyAvailable;
    json['inspectUsersInfoAvailable'] = inspectUsersInfoAvailable;
    json['rewardsAvailable'] = rewardsAvailable;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    return json;
  }
}