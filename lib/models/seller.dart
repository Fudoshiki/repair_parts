class Seller {
  String? firstname;
  String? lastname;
  dynamic middlename;

  Seller({
    this.firstname,
    this.lastname,
    this.middlename,
  });

  Seller.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'] as String?;
    lastname = json['lastname'] as String?;
    middlename = json['middlename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['firstname'] = firstname;
    json['lastname'] = lastname;
    json['middlename'] = middlename;
    return json;
  }
}
