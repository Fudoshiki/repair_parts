import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/buyer/profile/controller/profile_controller.dart';

import 'company_ip_screen.dart';
import 'company_oop_screen.dart';

class MainDataProfileCompaniesScreen  extends StatelessWidget{
  ProfileController profileController=Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20
          ),
          width: Get.width,
          height: 1,
          color: Color(0xffE7E7E7),
        ),
        ...profileController.dataCompanies.rows!.map((companies) => getRowCompany(companies.name,
                (){
                  if(companies.entityType=="ООО"){
                    print("OOO");
                    Get.to(()=>CompanyOOPScreen(companies));
                  }else{
                    Get.to(()=>CompanyIPScreen(companies));
                  }
            }
        ))
      ],
    );
  }
  Widget getRowCompany(text,onTap){
    return  GestureDetector(
      child: Container(
          margin: EdgeInsets.only(
              left: 20,
              right: 20
          ),
          height: 50,
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color(0xffE7E7E7),
                    width: 1
                ),
              )
          ),
          padding: EdgeInsets.only(
              left: 10
          ),
          child: Row(
            children: [
              Text(
                "${text}",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto",
                    color: Color(0xff2e2e33)
                ),
              ),
            ],
          )
      ),
      onTap: onTap,

    );
  }


}