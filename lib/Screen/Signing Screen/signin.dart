import 'package:final_year_project/Widgets/allwidget.dart';
import 'package:final_year_project/services/AuthController.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
class SignUp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  final namecontroler=TextEditingController();
  final emailcontroler=TextEditingController();
  final passworcontroler=TextEditingController();
  final cpassworcontroler=TextEditingController();
  bool emailvalidate=false;
  bool pasvalidate=false;
  bool namevalidate=false;
  bool cpasvalidate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFFFFDD33),
                const Color(0xFFFFFFFF),
              ],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/icon/iconlogin.png"),fit: BoxFit.cover)
                  ),
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*65,

                ),
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height*0.3,
                child: Container(
                  child: Column(
                    children: [
                      Column(
                        children: [

                          textField(
                              namecontroler,
                              namevalidate,
                              "name",
                              TextInputType.name,
                              false,
                              Icon(Icons.person)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              emailcontroler,
                              emailvalidate,
                              "email",
                              TextInputType.emailAddress,

                              false,
                              Icon(Icons.email)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              passworcontroler,
                              pasvalidate,
                              "password",
                              TextInputType.visiblePassword,
                              true,
                              Icon(Icons.lock)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              cpassworcontroler,
                              cpasvalidate,
                              "conform password",
                              TextInputType.visiblePassword,
                              true,
                              Icon(Icons.lock)
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              if ((emailcontroler.text.isEmpty) && (passworcontroler.text.isEmpty)&&
                                  (cpassworcontroler.text.isEmpty) && (namecontroler.text.isEmpty)
                                  &&passworcontroler.text!=cpassworcontroler.text) {
                                setState(() {
                                  emailcontroler.text.isEmpty?emailvalidate=true:emailvalidate=false;
                                  passworcontroler.text.isEmpty?pasvalidate=true:pasvalidate=false;
                                  namecontroler.text.isEmpty?namevalidate=true:namevalidate=false;
                                  cpassworcontroler.text.isEmpty?cpasvalidate=true:cpasvalidate=false;
                                });
                              }
                              else
                                //   if((emailcontroler.text.isNotEmpty) && (passworcontroler.text.isNotEmpty)&&
                                //     (cpassworcontroler.text.isNotEmpty) && (namecontroler.text.isNotEmpty)
                                //     &&passworcontroler.text==cpassworcontroler.text)
                                  {
                                authController.register(emailcontroler.text, passworcontroler.text,namecontroler.text);
                                // Navigator.pushReplacement(context,
                                //     new MaterialPageRoute(
                                //         builder: (context) => Navebar()));
                              }
                            },
                            child:
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.08,
                                decoration: BoxDecoration(
                                  color:Color(0xff007360),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text("SignUp",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                                onTap:()=> Navigator.of(context).pushReplacement(
                                    new MaterialPageRoute(builder: (context)=>Login())),
                                child: Text("i have an Account ",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w900
                                ),
                                )
                            ),
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
