import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UpcomingSchedule extends StatefulWidget {
  const UpcomingSchedule({super.key});

  @override
  State<UpcomingSchedule> createState() => _UpcomingScheduleState();
}

class _UpcomingScheduleState extends State<UpcomingSchedule> {
  @override
  Widget build(BuildContext context) {

    return Material(
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About Doctor", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
              ),
              //Doctor 1
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),],
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Dr. Manohar Suranagi", style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Cardiologist"),
                        trailing: CircleAvatar(
                          radius:25,
                          backgroundImage: AssetImage("assets/doctors/doctor1.jpg"),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row( children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text("15/08/2023",
                              style: TextStyle(color: Colors.black54),)
                          ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 5,),
                              Text("6:30 PM",
                                style: TextStyle(color: Colors.black54),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Confirmed",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F6FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Cancel", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Reschedule", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ) ,
              ),

              //Doctor 2
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),],
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Dr. Bindushree", style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Cosmetologist"),
                        trailing: CircleAvatar(
                          radius:25,
                          backgroundImage: AssetImage("assets/doctors/doctor2.jpg"),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row( children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text("15/09/2023",
                              style: TextStyle(color: Colors.black54),)
                          ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 5,),
                              Text("7:30 PM",
                                style: TextStyle(color: Colors.black54),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Confirmed",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F6FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Cancel", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Reschedule", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ) ,
              ),

              //Doctor 2
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),],
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Dr. Raghurama", style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Diabetologist"),
                        trailing: CircleAvatar(
                          radius:25,
                          backgroundImage: AssetImage("assets/doctors/doctor3.jpg"),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row( children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text("23/09/2023",
                              style: TextStyle(color: Colors.black54),)
                          ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 5,),
                              Text("12:30 PM",
                                style: TextStyle(color: Colors.black54),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Confirmed",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F6FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Cancel", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Reschedule", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}