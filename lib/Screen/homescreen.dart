import 'package:final_year_project/Screen/Home_Card/blood_pressure.dart';
import 'package:final_year_project/Widgets/curvepaint.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff) ,
      appBar: AppBar(
        backgroundColor: Color(0xffeef2fa),
        elevation: 0.0,
        leading: Icon(Icons.person_pin,size: 30,),
      ),
      endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xFFFAE8A8),
                        const Color(0xFFFFFFFF),

                      ],
                      begin: const FractionalOffset(0.0, 1.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Center(child: Text('Drawer Header')),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          )),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
               height: MediaQuery.of(context).size.height*0.4,
               width: double.infinity,
               child: Stack(
                children: [

                  Image.asset('assets/topcurve.png',width: MediaQuery.of(context).size.width,),
                  // Image.asset('assets/blueCurve.png',width: MediaQuery.of(context).size.width,),
                  Positioned(
                      top: 0,
                      child: Container(
                        color:Color(0xffeef2fa) ,
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                      )),
                  Positioned(
                      top: 40,
                      left: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(

                          children: [
                            Text('Get will soon',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,),),
                            Text('Hassan!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                          ],
                        ),
                      ),),
                  Positioned(
                      top: MediaQuery.of(context).size.height*0.2,
                      left: 40,
                      child:      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            height: 120,
                            child: new Card(

                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              child: InkWell(
                                onTap: (){Navigator.of(context).push(new
                                MaterialPageRoute(builder: (context)=>BloodPressure()));
                                },
                                child: new Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('BLOOD PRESSURE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,),),
                                        Text('120/180',style: TextStyle(color:Color(0xffED703A),fontSize: 25,fontWeight: FontWeight.bold,),),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),
                          Container(

                            width: 150,
                            height: 120,
                            child: new Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              child: new Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('TEMPERATURE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,),),
                                      Text('97c',style: TextStyle(color:Color(0xffCB69A6),fontSize: 25,fontWeight: FontWeight.bold,),),
                                    ],
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),)
                ],
            ),
             ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('What You Need?',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,),)),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
      //           Container(
      //           //  color: Color(0xffCB69A6),
      //           width: MediaQuery.of(context).size.width/3,
      //     height: 100,
      //     child: new Card(
      //
      //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //       child: new Center(
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Image.asset('assets/Asset2.png',height: 60,width: 60,color: Color(0xffED703A),),
      //               SizedBox(height: 5,),
      //               Text('Vital Monetring',style: TextStyle(color:Color(0xff000000),fontSize: 9,fontWeight: FontWeight.bold,),),
      //             ],
      //           )
      //       ),
      //     ),
      // ),
                Container(
                  //  color: Color(0xffCB69A6),
                  width: MediaQuery.of(context).size.width/2,
                  height: 120,
                  child: new Card(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: new Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Asset3.png',height: 60,width: 60,),
                            SizedBox(height: 5,),
                            Text('Tele Consultance',style: TextStyle(color:Color(0xff000000),fontSize: 9,fontWeight: FontWeight.bold,),),
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                //  color: Color(0xffCB69A6),
                  width: MediaQuery.of(context).size.width/2,
                  height: 120,
                  child: new Card(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: new Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Asset4.png',height: 60,width: 60,),
                           SizedBox(height: 5,),
                            Text('Order Medicine',style: TextStyle(color:Color(0xff000000),fontSize: 9,fontWeight: FontWeight.bold,),),
                          ],
                        )
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //  color: Color(0xffCB69A6),
                  width: MediaQuery.of(context).size.width/2,
                  height: 120,
                  child: new Card(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: new Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Asset5.png',height: 60,width: 60),
                            SizedBox(height: 5,),
                            Text('Dialysis Transport',style: TextStyle(color:Color(0xff000000),fontSize: 9,fontWeight: FontWeight.bold,),),
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  //  color: Color(0xffCB69A6),
                  width: MediaQuery.of(context).size.width/2,
                  height: 120,
                  child: new Card(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: new Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Asset6.png',height: 60,width: 60,color: Color(
                                0xff74b16a),),
                            SizedBox(height: 5,),
                            Text('Food Service',style: TextStyle(color:Color(0xff000000),fontSize: 9,fontWeight: FontWeight.bold,),),
                          ],
                        )
                    ),
                  ),
                ),
                // Container(
                //   //  color: Color(0xffCB69A6),
                //   width: MediaQuery.of(context).size.width/3,
                //   height: 100,
                //   child: new Card(
                //
                //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                //     child: new Center(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Image.asset('assets/Asset7.png',height: 60,width: 60),
                //             SizedBox(height: 5,),
                //             Text('Laundry Service',style: TextStyle(color:Color(0xff000000),fontSize: 9,fontWeight: FontWeight.bold,),),
                //           ],
                //         )
                //     ),
                //   ),
                // ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(

                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/Asset8.png',height: 60,width: 60),

                      Text('EMERGENCY',style: TextStyle(color:Color(0xff000000),fontSize: 22,fontWeight: FontWeight.bold,),),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
