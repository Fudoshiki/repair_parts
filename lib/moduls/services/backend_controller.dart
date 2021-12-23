import 'package:get/get.dart';
import 'package:repair_parts/models/data_transport_types.dart';
import 'package:repair_parts/moduls/services/backend.dart';

class BackendController extends GetxController {
  Backend backend =new Backend();
  List<DataTranspostType>? transportList=[];
  @override
  void onInit() {
    getData();
  }
  getData()async{
    await Future.wait([
      backend.getTransportList()
    ]);
    transportList = backend.listDataTransportTypes;
  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }
}