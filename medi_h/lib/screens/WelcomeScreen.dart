import 'package:flutter/material.dart';
import 'package:medi_h/NavigationBarScreen.dart';

import 'package:medi_h/screens/LoginSignup/LoginScreen.dart';

import 'LoginSignup/SignUpScreen.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height =  MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        width: width,
        height: height,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF82D9F8),
              Color(0xB524E1F2),
              Color(0xFF4BD8FF),
              Color(0xFF24F2E1),
              Color(0xFF89FADD),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),

        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarScreen())
                   );
                  },
                  child: Text("SKIP",
                    style: TextStyle(
                        fontFamily: 'oxford',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue,
                      letterSpacing: 1

                    ),
                  ),
                ),
              ),
              SizedBox(height: 150,),
              Padding(padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/2healthcarebanner.jpg")),
              ),
              SizedBox(height: 0,),
              Text("MEDI-H",
                style: TextStyle(
                    fontFamily: 'optimus',
                    fontSize: 50,

                    fontWeight: FontWeight.bold,
                    color:Colors.blue,
                    letterSpacing: 10
                ),

              ),

              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(
                            builder:(context) => LoginScreen()
                        ));
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Log In",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontFamily: 'oxford',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                      ),

                    ),
                  ),
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()
                       ),
                           );
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text("Sign Up",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontFamily: 'oxford',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Text("IMPROVING LIVES TOGETHER",
                style: TextStyle(
                    fontFamily: 'oxford',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color:Colors.black45,
                    letterSpacing: 3
                ),
              ),
              SizedBox(height: 58),
              Text("Copyright © 2023 ShivaSahani. All Right Reserved",
                style: TextStyle(
                    fontFamily: 'oxford',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color:Colors.black45,
                    letterSpacing: 0
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}