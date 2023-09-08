import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medi_h/utils/colors.dart';

import '../AppointmentScreen.dart';

class DoctorsSection extends StatelessWidget{
  List<String> name=["Dr. Manohar Suranagi","Dr. Bindushree","Dr. Raghurama","Dr. Udaya Shankar "];
  List<String> specialist=["Cardiologist","Cosmetologist","Diabetologist","Neurologist"];
  GlobalKey _bottomNavBarKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
          shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index){
            return
                Column(
                  children: [
                    Container(height: 300, width: 200,margin:EdgeInsets.symmetric(horizontal:15,vertical: 20),
                    decoration: BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:[BoxShadow(color: Colors.black38,blurRadius: 4, spreadRadius: 2,
                    ),]
                    ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: (){
                                // if index ==1
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentScreen()
                                  ),);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: Image.asset("assets/doctors/doctor${index + 1}.jpg", height: 200,width: 200,),
                                ),
                              ),
                              Align(alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle,
                                  boxShadow: [BoxShadow(color: Colors.white, blurRadius: 4, spreadRadius: 2,
                                  ),],),
                                child: Center(child: Icon(Icons.favorite_outline,color: sblue,size: 28,),),
                              ),)
                            ],),
                          SizedBox(height: 8,),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'VacerSansRegularPersonal',color: Colors.blue)),
                            SizedBox(height: 5,),
                            Text(specialist[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,fontFamily: 'OxfordStreet',color: Colors.black12.withOpacity(0.6))),
                            SizedBox(height: 5,),
                            Row(children: [Icon(Icons.star,color: Colors.yellow,),
                              Text("4.8",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'OxfordStreet',color: Colors.black12.withOpacity(0.6))),
                            ],),
                          ],),
                          )
                        ],
                      ),
                    ),
                  ],
                );
          },
      ),
    );
  }

}