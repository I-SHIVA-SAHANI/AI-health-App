import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});


  Widget build(BuildContext context){
    return Material(
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Settings", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                title:Text("Shiva sahani",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),
                ),
                subtitle: Text("Profile"),
              ),
              Divider(height: 50,),
              ListTile(
                onTap: (){},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                title: Text("Profile", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),

              //Notification
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
                ),
                title: Text("Notification", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),

              //Privacy
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.privacy_tip,
                    color: Colors.red,
                    size: 35,
                  ),
                ),
                title: Text("Privacy", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),

              //General
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.settings_accessibility,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
                title: Text("General", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),

              //About
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.teal,
                    size: 35,
                  ),
                ),
                title: Text("About Us", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              Divider(height: 50,),

              //Logout
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.logout_outlined,
                    color: Colors.orange,
                    size: 35,
                  ),
                ),
                title: Text("Notification", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
      ),
    );

  }
}