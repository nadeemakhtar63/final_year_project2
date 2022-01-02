import 'package:final_year_project/Widgets/curvepaint.dart';
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
        appBar: AppBar(
        backgroundColor: Color(0xff787CBB),
    elevation: 0.0,

    ),

    body: CustomPaint(
    painter: CurvePainter(),
    child: Padding(
    padding: const EdgeInsets.only(top: 15.0,bottom: 15),
    child: Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Container(

    height: MediaQuery.of(context).size.height*0.15,

    ),
    ),

    Container(
    width: MediaQuery.of(context).size.width*0.8,
    height: 120,
    child: new Card(

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: InkWell(
    // onTap: (){Navigator.of(context).push(new
    // MaterialPageRoute(builder: (context)=>BloodPressure()));
    // },
    child: new Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/hr.png',height: 80,width: 80,),
        Text('BLOOD PRESSURE',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w700,),),
      ],
    ),
    Text('120/180',style: TextStyle(color:Color(0xffED703A),fontSize: 22,fontWeight: FontWeight.bold,),),
    ],
    )
    ),
    ),
    ),
    ),
    ]

    )
    )
    )
    )
    );
  }
}
