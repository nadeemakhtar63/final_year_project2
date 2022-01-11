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
  bool check=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFFFFFFFF),
                    const Color(0xFFFFFAFA),
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

                              Container(
                                height: MediaQuery.of(context).size.height*0.35,
                                 // child: Image.asset('assets/icon/iconlogin.png')
                                child: Stack(
                                  children: [

                                    Image.asset('assets/hafbluecurve.png',width: MediaQuery.of(context).size.width,),
                                    Image.asset('assets/blueCurve.png',width: MediaQuery.of(context).size.width,),

                                  ],
                                  
                                ),
                              ),
                              SizedBox(height: 20,),
                           PagePresentText("Login"),
                              SizedBox(height: 20,),
                              Expanded(child:
                              Column(children: [
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
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                        onTap: (){
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context)=>RestPassword()));
                                        },
                                        child: Text("Forget Password",style: TextStyle(color: Color(0xff666aaf),fontWeight: FontWeight.w900

                                        ),
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    if ((emailcontroler.text.isEmpty) ||(passcontroler.text.isEmpty)) {
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

                                  child:ButtonDesign("LogIn", context)
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Checkbox(

                                        value: check,
                                        onChanged:(val){
                                          setState(() {
                                            check=val!;
                                          });

                                        }

                                    ),
                                   InkWell(
                                     // onTap: (){
                                      //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                                     // },
                                      child: Text("Keep Me Sign In ",style: TextStyle(color: Color(0xff676aaf),fontWeight: FontWeight.w900

                                      ),
                                      )
                                  ),

                          ]
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                                    },
                                    child: Text("Create new Account ",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w900

                                    ),
                                    )
                                ),
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
