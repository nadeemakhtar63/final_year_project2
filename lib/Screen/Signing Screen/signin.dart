import 'package:final_year_project/Widgets/allwidget.dart';
import 'package:final_year_project/services/AuthController.dart';
import 'package:flutter/material.dart';
import '../homescreen.dart';
import 'Login.dart';
class SignUp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  final emailcontroler=TextEditingController();
  final passwordcontroler=TextEditingController();
  final phonecontroler=TextEditingController();
  final cpassworcontroler=TextEditingController();
  final gnumbercontroler=TextEditingController();
  bool phonevalidate=false;
  bool emailvalidate=false;
  bool pasvalidate=false;
  bool gnumvalidate=false;
  bool cpasvalidate=false;
  //bool cpassshow=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFFFFFFFF),
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
              Container(
                height: MediaQuery.of(context).size.height*0.35,

                  child: Stack(
                    children: [

                      Image.asset('assets/hafbluecurve.png',width: MediaQuery.of(context).size.width,),
                      Image.asset('assets/blueCurve.png',width: MediaQuery.of(context).size.width,),

                    ],

                  ),
              ),
              SizedBox(height: 20,),
              PagePresentText("Sign Up"),
              SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [

                          textField(
                              emailcontroler,
                              emailvalidate,
                              "Email",
                              TextInputType.emailAddress,
                              false,
                              Icon(Icons.person)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              phonecontroler,
                              phonevalidate,
                              "Mobile Number",
                              TextInputType.number,

                              false,
                              Icon(Icons.phone)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              gnumbercontroler,
                              gnumvalidate,
                              "Gardien Contect No",
                              TextInputType.number,
                              false,
                              Icon(Icons.phone)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              passwordcontroler,
                              pasvalidate,
                              "password",
                              TextInputType.visiblePassword,
                              false,
                              Icon(Icons.lock)
                          ),
                          SizedBox(height: 10,),
                          textField(
                              cpassworcontroler,
                              cpasvalidate,
                              "conform password",
                              TextInputType.visiblePassword,
                              false,
                              Icon(Icons.lock)
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              if ((emailcontroler.text.isEmpty) || (phonecontroler.text.isEmpty)||
                                  (gnumbercontroler.text.isEmpty) || (passwordcontroler.text.isEmpty) ||
                                  ((cpassworcontroler.text.isEmpty))
                                  ) {
                                setState(() {
                                  emailcontroler.text.isEmpty?emailvalidate=true:emailvalidate=false;
                                  phonecontroler.text.isEmpty?phonevalidate=true:pasvalidate=false;
                                  gnumbercontroler.text.isEmpty?gnumvalidate=true:gnumvalidate=false;
                                  passwordcontroler.text.isEmpty?pasvalidate=true:pasvalidate=false;
                                  cpassworcontroler.text.isEmpty?cpasvalidate=true:cpasvalidate=false;
                                });
                              }
                              else if((phonecontroler.text!=cpassworcontroler.text))
                                {
                                  setState(() {
                                    passwordcontroler.text.isEmpty?pasvalidate=true:pasvalidate=false;
                                    cpassworcontroler.text.isEmpty?cpasvalidate=true:cpasvalidate=false;
                                  });
                                }
                              else {
                                Navigator.of(context).pushReplacement(
                                    new MaterialPageRoute(builder: (context)=>HomeScreen()));

                                //authController.register(emailcontroler.text, passworcontroler.text,namecontroler.text);
                              }
                            },
                            child:ButtonDesign("Save", context)
                          ),
                          // SizedBox(height: 10,),
                          // Align(
                          //   alignment: Alignment.bottomRight,
                          //   child: InkWell(
                          //       onTap:()=> Navigator.of(context).pushReplacement(
                          //           new MaterialPageRoute(builder: (context)=>Login())),
                          //       child: Text("i have an Account ",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w900
                          //       ),
                          //       )
                          //   ),
                          // ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ],
                  ),
                ),
           //   ),
            ],
          ),
        ),
      ),
    );
  }
}
