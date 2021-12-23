import 'package:get/get.dart';
import 'package:repair_parts/models/data_auto_types.dart';
import 'package:repair_parts/models/data_regions.dart';
import 'package:repair_parts/models/data_sellers.dart';
import 'package:repair_parts/models/data_transport_types.dart';
import 'package:repair_parts/moduls/services/backend.dart';

class BackendController extends GetxController {
  Backend backend =new Backend();
  List<DataTranspostType>? transportList=[];
  List<DataRegions>? regionList=[];
  DataSellers dataSellers=new DataSellers();
  DataAutoTypes dataAutoTypes=new DataAutoTypes();

  @override
  void onInit() {
    getData();
  }
  getData()async{
    await Future.wait([
      backend.getTransportList(),
      backend.getRegionsList(),
      backend.getSellerList(),
      backend.getAutoType()
    ]);
    transportList = backend.listDataTransportTypes;
    regionList= backend.listDataRegions;
    dataSellers=backend.listSellers;
    dataAutoTypes=backend.dataAutoTypes;
  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }
}