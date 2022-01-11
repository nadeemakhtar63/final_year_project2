import 'package:flutter/material.dart';

class BloodPressure extends StatefulWidget {
  const BloodPressure({Key? key}) : super(key: key);

  @override
  _BloodPressureState createState() => _BloodPressureState();
}

class _BloodPressureState extends State<BloodPressure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.4,
              child: Stack(
                children: [
                  Image.asset('assets/vtop.png',width: MediaQuery.of(context).size.width,),
                Positioned(
                  left: 30,
                    top:MediaQuery.of(context).size.height*0.20,
                    child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    color: Color(0xffeef2fa),
                    borderRadius: BorderRadius.circular(40)
                  ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/hart.png',width: 60,height: 60,),
                                Text('BLOOD PRESSURE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,),),

                              ],
                            ),
                            Text('140/170',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,),),

                          ],

                        ),
                      ),
                ),

                )
                ],
              ),
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.4,
                child: Stack(
                  children: [
                    Image.asset('assets/vbotoom.png',width: MediaQuery.of(context).size.width,),
                    Positioned(
                      left: 30,
                        bottom:MediaQuery.of(context).size.height*0.20,
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width*0.8,
                          decoration: BoxDecoration(
                              color: Color(0xffeef2fa),
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/temp.png',width: 60,height: 60,),
                                    Text('Temperature',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,),),

                                  ],
                                ),
                                Text('37c',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,),),

                              ],

                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          color:Color(0xab6b6fb1) ,
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
