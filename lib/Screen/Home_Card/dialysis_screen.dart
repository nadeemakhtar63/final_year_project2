import 'dart:ui';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:final_year_project/Widgets/allwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dialysis_Transport extends StatefulWidget {
  const Dialysis_Transport({Key? key}) : super(key: key);
  @override
  _Doctor_ConsultanceState createState() => _Doctor_ConsultanceState();
}
class _Doctor_ConsultanceState extends State<Dialysis_Transport> {
  @override
  String yearChoose='';
  String monthChoose='';
  String dayChoose='';
  bool online=false;
  bool visit=false;
  static final DateFormat dayformate = DateFormat('dd');
  static final DateFormat yearformate = DateFormat('yyyy');
  static final DateFormat monthformat = DateFormat('MMMM');
  late String selectMonthDay="";
  DateTime _selectedValue = DateTime.now();
  DatePickerController _controller = DatePickerController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                  color: Color(0xff8d86b4),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height:120,
                      decoration: BoxDecoration(
                          color: Color(0xff2a0dcd),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child: Center(
                        child: Text("Dialysis Transport",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("vehicle",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                        SizedBox(height: 10,),
                        CheckboxListTile(
                          title: Text("Car",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                          value: online,
                          onChanged: (newValue) {
                            setState(() {
                              online = newValue!;
                              visit=!online;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                        SizedBox(height: 10,),
                        CheckboxListTile(
                          title: Text("Ambulance",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                          value: visit,
                          onChanged: (newValue) {
                            setState(() {
                              visit = newValue!;
                              online=!visit;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: DatePicker(
                DateTime.now(),
                width: 60,
                height: 80,
                controller: _controller,
                initialSelectedDate:DateTime.now(),
                selectionColor:selectMonthDay==null?Colors.red: Colors.green,
                selectedTextColor: Colors.white,
                // inactiveDates: [
                //   DateTime.now().add(Duration(days: 1)),
                //   DateTime.now().add(Duration(days: 3)),
                //   DateTime.now().add(Duration(days: 4)),
                //   DateTime.now().add(Duration(days: 7))
                // ],
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = date;
                    selectMonthDay=dayformate.format(date);
                    yearChoose=yearformate.format(date);
                    monthChoose=monthformat.format(date);
                    dayChoose=dayformate.format(date);
                  });
                },
              ),
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3,
                child: Stack(
                  children: [
                    Image.asset('assets/vbotoom.png',width: MediaQuery.of(context).size.width,),
                    Positioned(
                        left: 30,
                        bottom:MediaQuery.of(context).size.height*0.10,
                        child:ButtonDesign("SEND REQUEST", context)
                    ),
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
