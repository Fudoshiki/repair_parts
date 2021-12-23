import 'address_city_fias_id_by_aoguid.dart';

class DataItemRegion {
  String? areacode;
  String? autocode;
  String? citycode;
  String? code;
  String? enddate;
  String? formalname;
  dynamic ifnsfl;
  dynamic ifnsul;
  String? offname;
  String? okato;
  String? oktmo;
  String? placecode;
  String? plaincode;
  dynamic postalcode;
  String? regioncode;
  String? shortname;
  String? startdate;
  String? streetcode;
  dynamic terrifnsfl;
  dynamic terrifnsul;
  String? updatedate;
  String? ctarcode;
  String? extrcode;
  String? sextcode;
  String? plancode;
  String? cadnum;
  String? divtype;
  int? actstatus;
  String? aoguid;
  String? aoid;
  int? aolevel;
  int? centstatus;
  int? currstatus;
  int? livestatus;
  String? nextid;
  dynamic normdoc;
  int? operstatus;
  String? parentguid;
  String? previd;
  List<AddressCityFiasIdByAoguid>? addressCityFiasIdByAoguid;
  int? organizationBranchCount;

  DataItemRegion({
    this.areacode,
    this.autocode,
    this.citycode,
    this.code,
    this.enddate,
    this.formalname,
    this.ifnsfl,
    this.ifnsul,
    this.offname,
    this.okato,
    this.oktmo,
    this.placecode,
    this.plaincode,
    this.postalcode,
    this.regioncode,
    this.shortname,
    this.startdate,
    this.streetcode,
    this.terrifnsfl,
    this.terrifnsul,
    this.updatedate,
    this.ctarcode,
    this.extrcode,
    this.sextcode,
    this.plancode,
    this.cadnum,
    this.divtype,
    this.actstatus,
    this.aoguid,
    this.aoid,
    this.aolevel,
    this.centstatus,
    this.currstatus,
    this.livestatus,
    this.nextid,
    this.normdoc,
    this.operstatus,
    this.parentguid,
    this.previd,
    this.addressCityFiasIdByAoguid,
    this.organizationBranchCount,
  });

  DataItemRegion.fromJson(Map<String, dynamic> json) {
    areacode = json['areacode'] as String?;
    autocode = json['autocode'] as String?;
    citycode = json['citycode'] as String?;
    code = json['code'] as String?;
    enddate = json['enddate'] as String?;
    formalname = json['formalname'] as String?;
    ifnsfl = json['ifnsfl'];
    ifnsul = json['ifnsul'];
    offname = json['offname'] as String?;
    okato = json['okato'] as String?;
    oktmo = json['oktmo'] as String?;
    placecode = json['placecode'] as String?;
    plaincode = json['plaincode'] as String?;
    postalcode = json['postalcode'];
    regioncode = json['regioncode'] as String?;
    shortname = json['shortname'] as String?;
    startdate = json['startdate'] as String?;
    streetcode = json['streetcode'] as String?;
    terrifnsfl = json['terrifnsfl'];
    terrifnsul = json['terrifnsul'];
    updatedate = json['updatedate'] as String?;
    ctarcode = json['ctarcode'] as String?;
    extrcode = json['extrcode'] as String?;
    sextcode = json['sextcode'] as String?;
    plancode = json['plancode'] as String?;
    cadnum = json['cadnum'] as String?;
    divtype = json['divtype'] as String?;
    actstatus = json['actstatus'] as int?;
    aoguid = json['aoguid'] as String?;
    aoid = json['aoid'] as String?;
    aolevel = json['aolevel'] as int?;
    centstatus = json['centstatus'] as int?;
    currstatus = json['currstatus'] as int?;
    livestatus = json['livestatus'] as int?;
    nextid = json['nextid'] as String?;
    normdoc = json['normdoc'];
    operstatus = json['operstatus'] as int?;
    parentguid = json['parentguid'] as String?;
    previd = json['previd'] as String?;
    addressCityFiasIdByAoguid = (json['addressCityFiasIdByAoguid'] as List?)?.map((dynamic e) => AddressCityFiasIdByAoguid.fromJson(e as Map<String,dynamic>)).toList();
    organizationBranchCount = json['organizationBranchCount'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['areacode'] = areacode;
    json['autocode'] = autocode;
    json['citycode'] = citycode;
    json['code'] = code;
    json['enddate'] = enddate;
    json['formalname'] = formalname;
    json['ifnsfl'] = ifnsfl;
    json['ifnsul'] = ifnsul;
    json['offname'] = offname;
    json['okato'] = okato;
    json['oktmo'] = oktmo;
    json['placecode'] = placecode;
    json['plaincode'] = plaincode;
    json['postalcode'] = postalcode;
    json['regioncode'] = regioncode;
    json['shortname'] = shortname;
    json['startdate'] = startdate;
    json['streetcode'] = streetcode;
    json['terrifnsfl'] = terrifnsfl;
    json['terrifnsul'] = terrifnsul;
    json['updatedate'] = updatedate;
    json['ctarcode'] = ctarcode;
    json['extrcode'] = extrcode;
    json['sextcode'] = sextcode;
    json['plancode'] = plancode;
    json['cadnum'] = cadnum;
    json['divtype'] = divtype;
    json['actstatus'] = actstatus;
    json['aoguid'] = aoguid;
    json['aoid'] = aoid;
    json['aolevel'] = aolevel;
    json['centstatus'] = centstatus;
    json['currstatus'] = currstatus;
    json['livestatus'] = livestatus;
    json['nextid'] = nextid;
    json['normdoc'] = normdoc;
    json['operstatus'] = operstatus;
    json['parentguid'] = parentguid;
    json['previd'] = previd;
    json['addressCityFiasIdByAoguid'] = addressCityFiasIdByAoguid?.map((e) => e.toJson()).toList();
    json['organizationBranchCount'] = organizationBranchCount;
    return json;
  }
}


