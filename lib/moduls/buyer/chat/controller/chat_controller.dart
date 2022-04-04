import 'package:get/get.dart';
import 'package:repair_parts/models/data_chat.dart';
import 'package:repair_parts/models/data_chat_by_id.dart';
import 'package:repair_parts/models/data_message_chat_by_id.dart';
import 'package:repair_parts/models/data_notification.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';
import 'package:repair_parts/routes/app_pages.dart';

class ChatController extends GetxController{
  BackendController backendController =Get.find();
  DataChatById? dataChatById =new DataChatById();
  DataMessageChatById? dataMessageChatById =new DataMessageChatById();
  @override
  void onInit() {
    var id =Get.arguments;
    print(id);
    getDataForChatById(id);
  }

  getDataForChatById(id)async{

   dataChatById=await backendController.backend.getChatById(id);
   Get.forceAppUpdate();
   dataMessageChatById=await backendController.backend.getChatMessageChatId(id);
   Get.forceAppUpdate();

  }
}