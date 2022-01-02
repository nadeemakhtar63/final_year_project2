import 'package:final_year_project/Screen/Signing%20Screen/resetPassword.dart';
import 'package:final_year_project/Screen/Signing%20Screen/signin.dart';
import 'package:final_year_project/Widgets/allwidget.dart';
import 'package:final_year_project/services/AuthController.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroler=TextEditingController();
  final passcontroler=TextEditingController();
  bool emailvalidate=false;
  bool passvalidate=false;
  bool visiblepassword=true;
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
            child:  LayoutBuilder(
                builder: (context, constraint) {
                  return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: constraint.maxHeight),
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 40,),
                              Container(
                                height: MediaQuery.of(context).size.height*0.3,
                                 // child: Image.asset('assets/icon/iconlogin.png')
                              ),
                              Expanded(child: Column(children: [


                                textField(
                                    emailcontroler,
                                    emailvalidate,
                                    "email" ,
                                    TextInputType.emailAddress,
                                    false,
                                    Icon(Icons.email)
                                ),
                                SizedBox(height: 20,),
                                textField(
                                    passcontroler,
                                    passvalidate,
                                    "password",
                                    TextInputType.visiblePassword,
                                    visiblepassword,
                                    Icon(Icons.lock)
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                        onTap: (){
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context)=>RestPassword()));
                                        },
                                        child: Text("Forget Password",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w900

                                        ),
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    if ((emailcontroler.text.isEmpty) &&passcontroler.text.isEmpty) {
                                      setState(() {
                                        emailcontroler.text.isEmpty?emailvalidate=true:emailvalidate=false;
                                        passcontroler.text.isEmpty?passvalidate=true:passvalidate=false;
                                      });
                                    }
                                    else{
                                      authController.login(emailcontroler.text.trim(), passcontroler.text.trim());
                                    }
                                    //   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Navebar()));
                                  },

                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.08,
                                      decoration: BoxDecoration(
                                        color:Color(0xff007360),

                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                                      ),
                                    ) ,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                                      },
                                      child: Text("Create new Account ",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w900

                                      ),
                                      )
                                  ),
                                ),
                                SizedBox(height: 20,)
                              ],
                              ) ),
                            ],),
                        ),
                      ));
                })
        )
    );
  }
}
