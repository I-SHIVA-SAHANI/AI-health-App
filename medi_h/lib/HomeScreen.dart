import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medi_h/utils/category_card.dart';
import 'package:medi_h/utils/colors.dart';
import 'package:medi_h/utils/doctors_section.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white30,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.6,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [ Colors.green.withOpacity(0.6),sblue.withOpacity(0.9),],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
              )
              ),
            ),


            Padding(padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/images/profile.jpg'),),
                          Icon(Icons.notifications_none_outlined, color: swhite, size: 30,)
                        ],),
                      SizedBox(height: 15,),
                      Text("FIND", style: TextStyle(fontFamily:'AeroMaticsRegular', color: Colors.black, letterSpacing: 2, fontSize: 26, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 0,),
                      Text("YOUR DOCTOR ", style: TextStyle(fontFamily:'AeroMaticsRegular', color: swhite, fontSize: 30, fontWeight: FontWeight.bold),),

                      Container(
                      margin: EdgeInsets.only(top: 20, bottom:20),
                      width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.black38,blurRadius: 6,spreadRadius: 3),
                        ],
                      ),
                      child: TextFormField(decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here",
                        hintStyle: TextStyle( color: sgreywhite.withOpacity(1), ),
                        prefixIcon: Icon(Icons.search,color: sgreywhite,),
                      ),) ,
                      ),

                      Banner( message: "New", location: BannerLocation.topEnd,
                        child: Container(
                          margin: EdgeInsets.only(top: 5,),
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          //height: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black38,blurRadius: 6,spreadRadius: 3),

                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: TextButton(onPressed: (){},
                            child: Text("Check Your Physical Health Here",
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'OptimusPrinceps',
                                fontSize: 18,
                                fontWeight: FontWeight.bold ),),)
                          ) ,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container( height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryCard(iconImagePath: 'assets/images/appointment.png', CategoryName: "Book Appointment",),
                          CategoryCard(iconImagePath: 'assets/images/doctor.png', CategoryName: "See Doctors",),
                          CategoryCard(iconImagePath: 'assets/images/symptoms.png', CategoryName: "Enter Symptoms",),
                          CategoryCard(iconImagePath: 'assets/images/repository.png', CategoryName: "Health Records",),
                          CategoryCard(iconImagePath: 'assets/images/healthtip.png', CategoryName: "Health Tips",),
                        ],)),

                      SizedBox(height: 25,),
                      Padding(padding: EdgeInsets.only(left: 15),
                      child:Text("Recommended Doctors",
                      style: TextStyle(
                        fontFamily: 'AeroMaticsRegular',
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                      ),
                      ),
                      ),
                      DoctorsSection(),
                    ],),
                  ),
                ],),
            )
            ],)
      ),
    );
  }
}


