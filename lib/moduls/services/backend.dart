import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:repair_parts/models/data_auto_types.dart';
import 'package:repair_parts/models/data_brand_auto.dart';
import 'package:repair_parts/models/data_cart_products.dart';
import 'package:repair_parts/models/data_catalog_product_search.dart';
import 'package:repair_parts/models/data_chat.dart';
import 'package:repair_parts/models/data_chat_by_id.dart';
import 'package:repair_parts/models/data_companies.dart';
import 'package:repair_parts/models/data_favorite.dart';
import 'package:repair_parts/models/data_item_region.dart';
import 'package:repair_parts/models/data_login.dart';
import 'package:repair_parts/models/data_message_chat_by_id.dart';
import 'package:repair_parts/models/data_notification.dart';
import 'package:repair_parts/models/data_order_request.dart';
import 'package:repair_parts/models/data_orders.dart';
import 'package:repair_parts/models/data_product_by_id.dart';
import 'package:repair_parts/models/data_profile.dart';
import 'package:repair_parts/models/data_refund_exchange.dart';
import 'package:repair_parts/models/data_regions.dart';
import 'package:repair_parts/models/data_sellers.dart';
import 'package:repair_parts/models/data_transport_types.dart';
import 'package:repair_parts/models/rows_products.dart';
import 'package:repair_parts/models/user.dart';

class Backend {
  String baseUrl = "https://api.inf.market";

  Dio dio =new Dio();

  DataCompanies dataCompanies =new DataCompanies();
  DataFavorite dataFovorite=new DataFavorite();
  DataOrders dataOrders = new DataOrders();
  DataCartProducts dataCartProducts = new DataCartProducts();
  DataOrderRequest dataOrderRequest =new DataOrderRequest();
  DataNotofication dataNotification =new DataNotofication();
  DataRefundExchange dataRefundExchange = new DataRefundExchange();
  DataChat dataChat =new DataChat();
  List<DataTranspostType>? listDataTransportTypes =[];
  List<DataRegions>? listDataRegions =[];
  List<DataItemRegion>? listDataItemRegion;
  DataCatalogProductSearch dataCatalogProductByBrandAuto =new DataCatalogProductSearch();
  dynamic dataHistoryOrder;

  DataSellers listSellers = new DataSellers();

  DataAutoTypes dataAutoTypes = new DataAutoTypes();

  DataBrandAuto dataBrandAuto = new DataBrandAuto();


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
  //?????????????????? ???????????????????????? ?????????? ??????????????????????
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

  //???????????????????????????? ????????????????????????
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
  //???????????????? ????????????????????????
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
  Future<DataOrderRequest?> getOrderRequest()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/order/request/list?pageSize=10");
    print("getOrderRequest${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataOrderRequest=DataOrderRequest.fromJson(datas.data['data']);
      this.dataOrderRequest=dataOrderRequest ;
      return dataOrderRequest;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  Future<dynamic?> getHistoryOrders()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/order/history?pageSize=10");
    print("getOrders${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      this.dataHistoryOrder=datas.data['data']['rows'] ;
      return dataHistoryOrder;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  Future<DataRefundExchange?> getRefundExchange()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/order/refund-exchange/list?page=1");
    print("getRefundExchange${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataRefundExchange=DataRefundExchange.fromJson(datas.data['data']);
      this.dataRefundExchange=dataRefundExchange ;
      return dataRefundExchange;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }

  Future<List<DataTranspostType>?> getTransportList()async{

    var datas = await dio.get("/catalog/external?path=");
    print("getTransportList${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var listDataTransportTypes=(datas.data['data'] as List?)?.map((dynamic e) => DataTranspostType.fromJson(e as Map<String,dynamic>)).toList();
      this.listDataTransportTypes=listDataTransportTypes ;
      return listDataTransportTypes;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  Future<List<DataRegions>?> getRegionsList()async{
    ////regions
    var datas = await dio.get("/regions");
    print("getRegionsList${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var listDataRegions=(datas.data['data'] as List?)?.map((dynamic e) => DataRegions.fromJson(e as Map<String,dynamic>)).toList();
      this.listDataRegions=listDataRegions ;
      return listDataRegions;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }
  Future<List<DataItemRegion>?> getCompanyFromRegion(el)async{
    ////regions
    var datas = await dio.get("/regions/${el}");
    print("getCompanyFromRegion${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var listDataItemRegion=(datas.data['data'] as List?)?.map((dynamic e) => DataItemRegion.fromJson(e as Map<String,dynamic>)).toList();
      this.listDataItemRegion=listDataItemRegion ;
      return listDataItemRegion;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }

  Future<DataSellers?> getSellerList()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/user/list?role=seller&include[]=completedOrdersWithAuthUser");
    print("getSellerList${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var listSellers=DataSellers.fromJson(datas.data['data']);
      this.listSellers=listSellers ;
      return listSellers;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }

  ///user/list?role=seller&include[]=completedOrdersWithAuthUser

  Future<DataNotofication?> getNotificationList()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/notification/list?limit=1&offset=0");
    print("getNotificationList${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataNotification=DataNotofication.fromJson(datas.data['data']);
      this.dataNotification=dataNotification ;
      return dataNotification;
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
    var products = await dio.get("/catalog/cart-products?cartProducts=${cartProducts}");
    print("/catalog/cart-products?cartProducts=${cartProducts}");
    print("getProductCartProducts ${products.data}");
    if(products!=null){
      var dataCartProducts= DataCartProducts.fromJson(products.data['data']);
      this.dataCartProducts=dataCartProducts;
      return dataCartProducts;
    }else{
      return null;
    }

  }

  Future<DataCatalogProductSearch?> getDataCatalogProductSearch(string)async {
    var products = await dio.get("/catalog/products?search=$string");
    print("/catalog/products?search=$string");
    print("getProductCartProducts ${products.data}");
    if(products!=null){
      var dataCatalogProductSearch= DataCatalogProductSearch.fromJson(products.data['data']);
      return dataCatalogProductSearch;
    }else{
      return null;
    }
  }
  Future<DataCatalogProductSearch?> getDataCatalogProductByBrandAuto(autoType,autoBrand) async{
    var products = await dio.get("/catalog/products?page=1&autoType=$autoType&autoBrand=$autoBrand");
    print("/catalog/products?page=1&autoType=$autoType&autoBrand=$autoBrand");
    print("getProductCartProducts ${products.data}");
    if(products!=null){
      var dataCatalogProductByBrandAuto= DataCatalogProductSearch.fromJson(products.data['data']);
      return dataCatalogProductByBrandAuto;
    }else{
      return null;
    }
    //https://api.inf.market/catalog/products?page=2&autoType=dvigateli&autoBrand=cummins
  }
  Future<DataProductById?> getDataProductById(id)async{
    ///
    var products = await dio.get("/catalog/products/$id?include[]=recommendedProducts&include[]=applicabilities&include[]=analogs");
    print("/catalog/products/66281c37-e964-432b-813b-5b918b2e5320?include[]=recommendedProducts&include[]=applicabilities&include[]=analogs");
    print("getDataProductById ${products.data}");
    if(products!=null){
      var dataCatalogProductByBrandAuto= DataProductById.fromJson(products.data['data']);
      return dataCatalogProductByBrandAuto;
    }else{
      return null;
    }
  }
  Future<dynamic> addToFavoriteProduct(id)async{
    //user/favorite-products
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var products = await dio.post("/user/favorite-products",data: {
      "productId": "$id"
    });
    print("addToFavoriteProduct ${products.data}");
    if(products!=null){
      return dataCartProducts;
    }else{
      return null;
    }
  }
  Future<dynamic> deleteFavoriteProduct(id)async{
    //user/favorite-products
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var products = await dio.delete("/user/favorite-products/$id");
    print("deleteFavoriteProduct ${products.data}");
    if(products!=null){
      return products;
    }else{
      return null;
    }
  }
  Future<dynamic> addToCartProduct(String? id)async {
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var products = await dio.post("/user/cart-product",data: {"productId": "$id", "quantity": 1});
    print("addToCartProduct ${products.data}");
    if(products!=null){
      return products;
    }else{
      return null;
    }

  }
  Future<dynamic> deleteCartProduct(String? id) async{

    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var products = await dio.delete("/user/cart-product",data: {
      "productId": "$id"
    });
    print("deleteCartProduct ${products.data}");
    if(products!=null){
      return products;
    }else{
      return null;
    }

  }

  Future<DataAutoTypes?> getAutoType() async{
    var datas = await dio.get("/catalog/auto-types");
    print("getAutoType${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataAutoTypes=DataAutoTypes.fromJson(datas.data['data']);
      this.dataAutoTypes=dataAutoTypes ;
      return dataAutoTypes;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }
  Future<DataBrandAuto?> getBrandAuto(String? autoType) async{
    var datas = await dio.get("/catalog/auto-brands?autoType=$autoType");
    print("getBrandAuto${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataBrandAuto=DataBrandAuto.fromJson(datas.data['data']);
      this.dataBrandAuto=dataBrandAuto ;
      return dataBrandAuto;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }

  Future<DataChat?> getChatList()async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/chat/list?limit=10");
    print("getChatList${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataChat=DataChat.fromJson(datas.data['data']);
      this.dataChat=dataChat ;
      return dataChat;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }
  Future<DataChatById?> getChatById(id)async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,

        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/chat?chatId=$id");
    print("getChatById${datas.data}");

    if(datas.data!=null){
      print("${datas.data}");
      var dataChatById=DataChatById.fromJson(datas.data['data']);
      return dataChatById;
    }else{
      print("${datas.statusCode}");
      return null;
    }
  }
  Future<DataMessageChatById?> getChatMessageChatId(id)async{
    GetStorage storage =GetStorage();
    var token = storage.read("bearer_token");
    dio.options=BaseOptions(
        connectTimeout: 10000,
        baseUrl: baseUrl,
        headers: {
          "Authorization":"Bearer "+token
        }
    );
    var datas = await dio.get("/chat/message?chatId=$id&limit=10&offset=0");
    print("getChatMessageChatId${datas.data}");
    if(datas.data!=null){
      print("${datas.data}");
      var dataMessageChatById=DataMessageChatById.fromJson(datas.data['data']);
      return dataMessageChatById;
    }else{
      print("${datas.statusCode}");
      return null;
    }

  }

}