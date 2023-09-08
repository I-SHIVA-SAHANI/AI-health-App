import 'package:flutter/material.dart';
import 'package:medi_h/Upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});


  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonInd = 0;
  final _scheduleWidgets = [
    UpcomingSchedule(),
    Container(),
    Container(),
  ];
  Widget build(BuildContext context){
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:15),
                child: Text("Schedule",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 32),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          _buttonInd = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal:25),
                        decoration:BoxDecoration(
                          color: _buttonInd ==0 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Upcoming",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonInd ==0 ? Colors.white : Colors.black38.withOpacity(0.2),
                        ),),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        setState(() {
                          _buttonInd = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal:25),
                        decoration:BoxDecoration(
                          color: _buttonInd ==1 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Completed",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonInd ==1 ? Colors.white : Colors.black38.withOpacity(0.2),
                        ),),
                      ),
                    ),


                    InkWell(
                      onTap: (){
                        setState(() {
                          _buttonInd = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal:25),
                        decoration:BoxDecoration(
                          color: _buttonInd ==2 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Canceled",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonInd ==2 ? Colors.white : Colors.black38.withOpacity(0.2),
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              _scheduleWidgets[_buttonInd],
            ],
          ),
        ),

      ),
    );

  }
}