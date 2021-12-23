import 'package:get/get.dart';
import 'package:repair_parts/models/data_chat.dart';
import 'package:repair_parts/models/data_notification.dart';
import 'package:repair_parts/moduls/services/backend_controller.dart';
import 'package:repair_parts/routes/app_pages.dart';

class MessageController extends GetxController{
  BackendController backendController =Get.find();
  var address ="Добавить адрес".obs;

  var images=[];

  DataNotofication dataNotofication=new DataNotofication();
  DataChat dataChat =new DataChat();
  @override
  void onInit() {
    getDataForChatAndNotification();
  }

  getDataForChatAndNotification()async{
   await Future.wait([
      backendController.backend.getNotificationList(),
      backendController.backend.getChatList()
    ]);
   dataNotofication=backendController.backend.dataNotification;
   dataChat=backendController.backend.dataChat;
  }
}