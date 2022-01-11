import 'package:final_year_project/Widgets/allwidget.dart';
import 'package:final_year_project/services/AuthController.dart';
import 'package:flutter/material.dart';

class RestPassword extends StatefulWidget {
  const RestPassword({Key? key}) : super(key: key);

  @override
  _RestPasswordState createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  TextEditingController email=new TextEditingController();
  bool emailvalidate=false;
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
            child: Center(
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
                  PagePresentText("Forget Password"),
                  SizedBox(height: 20,),
                  textField(
                      email,
                      emailvalidate,
                      "Enter Email",
                      TextInputType.emailAddress,
                      false,
                      Icon(Icons.email)
                  ),
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: () {
                      if (email.text.isEmpty) {
                        setState(() {
                          email.text.isEmpty
                              ? emailvalidate = true
                              : emailvalidate = false;
                        });
                      }
                      else {
                        authController.resetPassword(email.text,context);

                      }
                    },
                    child: ButtonDesign("Send Password", context)
                  ),
                ],

              ),
            ),
        )
    );
  }
}
