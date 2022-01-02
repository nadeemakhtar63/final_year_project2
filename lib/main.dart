
import 'package:final_year_project/Screen/Signing%20Screen/Login.dart';
import 'package:final_year_project/services/AuthController.dart';
import 'package:final_year_project/services/authservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) => Get.put(AuthController()));
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Misa",
      home:Login(),
    );
  }
}