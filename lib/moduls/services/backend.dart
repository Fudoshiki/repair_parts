import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:repair_parts/models/data_login.dart';

class Backend {
  String baseUrl = "https://api.inf.market";

  Dio dio =new Dio();


  Backend(){
    dio =new Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }

  requestLogin(
      {
        String? phone,
        String? role,
        String? confirmCode
      }
      )async{
    var data ={
      "phone":phone
    };
    role!=null?data['role']=role:null;
    confirmCode!=null?data['confirmCode']=confirmCode:null;
    print(data);
    var datas =await dio.post("/auth/login",data: data);
    if(datas.data!=null){
      print("${datas.data}");
      GetStorage storage =GetStorage();
      var dataLogin = DataLogin.fromJson(datas.data['data']);
      print(dataLogin.payload!.token);
      storage.write("bearer_token", dataLogin.payload!.token);
      Get.back();
    }else{
      print("${datas.statusCode}");
    }

  }

  requestGetUser()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "Authorization":token
      }
    );
    var datas =await dio.get("/user");
    if(datas.data!=null){
      print("${datas.data}");
    }else{
      print("${datas.statusCode}");
    }
  }

   
}