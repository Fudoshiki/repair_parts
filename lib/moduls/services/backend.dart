import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:repair_parts/models/data_cart_products.dart';
import 'package:repair_parts/models/data_companies.dart';
import 'package:repair_parts/models/data_favorite.dart';
import 'package:repair_parts/models/data_login.dart';
import 'package:repair_parts/models/data_orders.dart';
import 'package:repair_parts/models/data_profile.dart';
import 'package:repair_parts/models/user.dart';

class Backend {
  String baseUrl = "https://api.inf.market";

  Dio dio =new Dio();

  DataCompanies dataCompanies =new DataCompanies();
  DataFavorite dataFovorite=new DataFavorite();
  DataOrders dataOrders = new DataOrders();
  DataCartProducts dataCartProducts = new DataCartProducts();

  Backend(){
    dio =new Dio(
      BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
      ),
    );
  }

 Future<User?> requestLogin(
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
      return dataLogin.user;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  //Получение пользователя после авторизации
  Future<DataProfile?> requestGetUser()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
      headers: {
        "Authorization":"Bearer "+token
      }
    );
    var datas =await dio.get("/user/profile");
    print("${datas.data}");

    if(datas.data!=null){
      print("requestGetUser ${datas.data['data']['user']['cartProducts']}");
      var user = DataProfile.fromJson(datas.data['data']);

      return user;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }

  //Редактирование пользователя
  Future<User?> requestPutUser({
    id,
    lastname,
    firstname,
    middlename,
    phone,
    email
  })async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );

    print("start0");
    var datas =await dio.put("/user",
    data: {
      "user":{
        "id":"$id",
        "lastname": "$lastname",
        "firstname": "$firstname",
        "middlename": "$middlename",
        "phone": "$phone",
        "email": "$email"
      }
    }
    );
    print("start1");
    if(datas.data!=null){
      print("${datas.data}");
      return User.fromJson(datas.data['data']['user']);
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }
  //Удаление пользователя
  requestDeleteUser(userId)async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas =await dio.delete("/user",data: {
      "userId":userId
    });
    if(datas.data!=null){
      print("${datas.data}");
      storage.erase();
      Get.back();
    }else{
      print("${datas.statusCode}");
    }
  }
  ///
  Future<DataCompanies?> getCompanies(userId)async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas =await dio.get("/user/juristic-subject/list?userId=$userId&page=0&pageSize=10");
    print("getCompanies${datas.data}");
    if(datas.data!=null){
      print("${datas.data}");
      var dataCompanies = DataCompanies.fromJson(datas.data['data']);
      this.dataCompanies=dataCompanies ;
      return dataCompanies;
    }else{
      print("${datas.statusCode}");
       null;
    }

  }
  Future<DataFavorite?> getFavorities()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/user/favorite-products");
    print("getFavorities${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataFovorite=DataFavorite.fromJson(datas.data['data']);
      this.dataFovorite=dataFovorite ;
      return dataFovorite;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  Future<DataOrders?> getOrders()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/order/list?pageSize=10");
    print("getOrders${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataOrders=DataOrders.fromJson(datas.data['data']);
      this.dataOrders=dataOrders ;
      return dataOrders;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  Future<DataCartProducts?> getProductCartProducts(cartProducts)async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var products = await dio.get("/catalog/cart-products?cartProducts=[${cartProducts}]");
    print("/catalog/cart-products?cartProducts=[${cartProducts}]");
    print("getProductCartProducts ${products.data}");
    if(products!=null){
      var dataCartProducts= DataCartProducts.fromJson(products.data['data']);
      this.dataCartProducts=dataCartProducts;
      return dataCartProducts;
    }else{
      return null;
    }

  }

///order/list?pageSize=10

}