import 'package:flutter/material.dart';

textField(emailEditingController,bool emailvalidate,
    hintText,textInputType,bool check,Icon icon)
{
  return Padding(
    padding: const EdgeInsets.all(10.0),
  child:  Stack(
      children: [
        // Container(
        // //  height: 60,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(80),
        //     ),
        //     boxShadow: [
        //       BoxShadow(
        //         spreadRadius: 4,
        //         color: Colors.black,
        //         offset: Offset(2, 2),
        //         blurRadius: 3,
        //       ),
        //     ],
        //   ),
        // ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 4,
                  color: Color(0x3b211f1f),
                  offset: Offset(2, 2),
                  blurRadius: 3,
                ),
              ],
            ),
          child: TextField(
              autocorrect: true,
              obscureText: check,
              keyboardType: textInputType,
              controller: emailEditingController,
              style: TextStyle(color: Color(0xff3D4864)),
              decoration: InputDecoration(
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                      borderSide: new BorderSide(color: Color(0xff3D4864))
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide:  BorderSide(color: Color(0xff3D4864), width: 0.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide:  BorderSide(color: Color(0xff3D4864), width: 0.0),
                  ),
                  hintText: hintText,
                  prefixIcon: icon,
                  hintStyle: TextStyle(color: Color(0xff3D4864)),
                  errorText: emailvalidate?"$hintText Required*":null
              ),
        ),
        )
      ],
    ),
    // child: TextField(
    //   autocorrect: true,
    //   obscureText: check,
    //   keyboardType: textInputType,
    //   controller: emailEditingController,
    //   style: TextStyle(color: Color(0xff3D4864)),
    //   decoration: InputDecoration(
    //       fillColor: Color(0xFFFFFFFF),
    //       filled: true,
    //       border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(14.0),
    //           borderSide: new BorderSide(color: Color(0xff3D4864))
    //       ),
    //       enabledBorder:  OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(14),
    //         borderSide:  BorderSide(color: Color(0xff3D4864), width: 0.0),
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(14),
    //         borderSide:  BorderSide(color: Color(0xff3D4864), width: 0.0),
    //       ),
    //       hintText: hintText,
    //       prefixIcon: icon,
    //       hintStyle: TextStyle(color: Color(0xff3D4864)),
    //       errorText: emailvalidate?"$hintText Required*":null
    //   ),
    //
    // ),
  );
}
    ButtonDesign(String text,BuildContext context){
  return  Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),
    child: Container(
      width: MediaQuery.of(context).size.width*0.6,
      height: MediaQuery.of(context).size.height*0.08,
      decoration: BoxDecoration(
        color:Color(0xff676aaf),

        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(text,style: TextStyle(color: Colors.white,fontSize: 22,
            fontWeight: FontWeight.w900),),
      ),
    ) ,
  );
    }
    PagePresentText(String text){
  return    Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff676aaf)));
    }