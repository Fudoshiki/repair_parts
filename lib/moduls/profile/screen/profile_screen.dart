import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair_parts/moduls/profile/controller/profile_controller.dart';
import 'package:repair_parts/moduls/profile/screen/pages/profile_page.dart';
import 'package:repair_parts/moduls/profile/screen/pages/register_page.dart';

class ProfileScreen extends StatelessWidget{
  ProfileController _profileController =Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _profileController.auth
          ?ProfilePage()
          :RegisterPage(),
    );
  }

}