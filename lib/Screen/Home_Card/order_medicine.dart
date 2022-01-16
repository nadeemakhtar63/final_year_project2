import 'dart:ffi';

import 'package:final_year_project/Widgets/allwidget.dart';
import 'package:flutter/material.dart';

class Order_Me extends StatefulWidget {
  const Order_Me({Key? key}) : super(key: key);

  @override
  _Order_MeState createState() => _Order_MeState();
}

class _Order_MeState extends State<Order_Me> {
  final searchcontroler=TextEditingController();
  int itemcount=0;
  int itemcount1=0;
  int itemcount2=0;
  int itemcount3=0;
  int itemcount4=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height*0.1,
              color: Colors.white,
            child: Row(children: [
              Container(
                width:MediaQuery.of(context).size.width/6 ,
                child:Image(image: AssetImage('assets/mediciens/medicen1.png',),fit: BoxFit.cover,),
              ),
              Container(
                width:MediaQuery.of(context).size.width/6 ,
                child:Image(image: AssetImage('assets/mediciens/medicien2.png',),fit: BoxFit.cover,),
              ),
              Container(
                width:MediaQuery.of(context).size.width/6 ,
                child:Image(image: AssetImage('assets/mediciens/medicien3.png',),fit: BoxFit.cover,),
              ),
              Container(
                width:MediaQuery.of(context).size.width/6 ,
                child:Image(image: AssetImage('assets/mediciens/medicien4.png',),fit: BoxFit.cover,),
              ),
              Container(
                width:MediaQuery.of(context).size.width/6 ,
                child:Image(image: AssetImage('assets/mediciens/medicien5.png',),fit: BoxFit.cover,),
              ),
              Container(
                width:MediaQuery.of(context).size.width/6 ,
                child:Image(image: AssetImage('assets/mediciens/medicien6.png',),fit: BoxFit.cover,),
              ),
            ],),
            ),
          Container(
            height:MediaQuery.of(context).size.height*0.1,
            width: double.infinity,
            color: Colors.deepPurple,
            child: Center(child: Text("Order Medicine",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          ),

        // width: MediaQuery.of(context).size.width*0.8,
       Padding(
          padding: EdgeInsets.only(top: 10),
          child:
        textField(
            searchcontroler,
            false,
            'Search',
            TextInputType.text,
            false,
            Icon(Icons.search)
        )
      ),
     Container(
       height: MediaQuery.of(context).size.height*0.5,
       child: Padding(padding: EdgeInsets.only(top: 1),
         child: ListView.builder(
             itemCount: 5,
             itemBuilder:(context,index){
               return Column(
                 children: [
                   SizedBox(height: 20,),
                   Container(
                     height: 100,
                     decoration: BoxDecoration(
                       color: Colors.blueGrey,
                       borderRadius: BorderRadius.circular(40),
                     ),
                     child:

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Column(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Panadol",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                             Text("Quantity",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white10),),


                           ],
                         ),
                         Container(
                           child: Row(
                             children: [
                               IconButton(
                                   onPressed:(){
                                     setState(() {
                                       itemcount--;
                                     });
                                   },
                                   icon: Icon(Icons.minimize,size: 18,),),

                               Container(
                                 height: 20,
                                 width: 20,
                                 decoration: BoxDecoration(
                                   color: Colors.deepPurple,
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 child: Center(
                                   child: Text(itemcount.toString()),
                                 ),
                               ),
                               IconButton(
                                   onPressed:(){
                                     setState(() {
                                       itemcount++;
                                     });

                                   },
                                   icon: Icon(Icons.add,size: 18,),
                               )

                             ],
                           ),
                          ),
                         Image(image: AssetImage('assets/mediciens/medicen1.png',),height: 35,width: 35,),
                       ],
                    ),
                   ),

                 ],
               );
             }),
       ),
     ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Total Bill= ${itemcount*220}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Container(
                        width:  MediaQuery.of(context).size.width/3,
                        height:double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight:Radius.circular(10) ),
                        ),
                        child: Center(
                          child: Text("Order",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                        ),
                      )
                    ],
                  )
              ),
            )
     // )
          ],
        ),
      ),
    );
  }
}
