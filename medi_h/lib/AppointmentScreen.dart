import 'package:flutter/material.dart';
import 'package:medi_h/utils/colors.dart';
class AppointmentScreen extends StatefulWidget{
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: sblue,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
          children: [
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Icon(Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 35,
                      backgroundImage: AssetImage("assets/doctors/doctor1.jpg"),
                      ),
                      SizedBox(height: 15,),
                      Text("Dr. Manohar Suranagi", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'VacerSansRegularPersonal',color: Colors.white),
                      ),
                      SizedBox(height: 7,),
                      Text("Cardiologist", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'OxfordStreet',color: Colors.white.withOpacity(0.8)),
                      ),
                      SizedBox(height: 15,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sgreywhite,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.call,
                            color: Colors.white,
                            size: 25,
                          ),
                      ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sgreywhite,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.message,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),

                      ],)
                    ],
                  ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20,left: 15,right: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Dr. Manohar J Suranagi is an Associate Professor of Cardiology at Sri Jayadeva Institute of Cardiovascular Sciences & Research (SJICS&R), Bangalore. I have experience and expertise in clinical cardiology, Coronary and Peripheral Interventions, Balloon Valvuloplasties and other Cardiac Interventions. Being a seasoned veteran, he also attends several CMEs and conferences to gain further understanding about the latest developments in his field of practice.",
                  style: TextStyle(fontSize: 14, color: Colors.black54.withOpacity(0.4)),
                  textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                    Text("Ratings", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Text("4.9", style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'OxfordStreet',color: Colors.black12.withOpacity(0.6)),
                    ),
                    SizedBox(width: 5,),
                    Text("(120)", style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'OxfordStreet',color: Colors.blue),
                    ),


                    //aligns next widget to end of the row
                    Spacer(),
                    TextButton(onPressed:(){},
                        child: Text("See all",style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'OxfordStreet',color: Colors.blue),
                    ),),
                  ],),
                  SizedBox(height: 10,),
                  Text("Location",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontFamily: 'OxfordStreet',color: Colors.black,),
                  ),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle),
                      child: Icon(Icons.location_on, color: Colors.red,size: 50,),
                    ),
                    title: Text("1206, 16th Main Rd, Mahadeshwara Nagar, Stage 2, BTM Layout, Bengaluru, Karnataka 560076",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 30,),
                  Text("Availability", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,fontFamily: 'OxfordStreet',color: Colors.black),),
                  SizedBox(height: 18,),
                  Row(children: [
                    Text("Monday - saturday : ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,fontFamily: 'OxfordStreet',color: Colors.blue,),),
                    Text("5:00PM - 9:00PM", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,fontFamily: 'OxfordStreet',color: Colors.black54))
                  ]),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("Sunday : ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,fontFamily: 'OxfordStreet',color: Colors.blue,),),
                    Text("10:00AM - 1:00PM", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,fontFamily: 'OxfordStreet',color: Colors.black54))
                  ]),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: SizedBox(
                      width: double.infinity,
                      child: Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: (){

                          },
                          child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            child: Center(
                              child: Text("Book Appointment",
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 3,
                                  fontFamily: 'oxford',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],),
      ),
    );
  }
}
