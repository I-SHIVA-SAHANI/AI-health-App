import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:medi_h/screens/LoginSignup/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medi_h/utils/utils.dart';

class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool loading = false;
  final formKey=GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool _isobscure=true;

  @override
  Widget build(BuildContext context){
    return Material(

      child: Form(
        key: formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFC8CED1),
                  Color(0xB524E1F2),
                  Color(0xFF4BD8FF),
                  Color(0xFF24F2E1),
                  Color(0xFF89FADD),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Padding(
                      padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/signupbanner.jpg'),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Full name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: _nameValid,
                  ),
                  ),
                  SizedBox(height: 0,),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _emailValidation,
                    ),
                  ),
                  SizedBox(height: 0,),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextFormField(
                       controller: phoneController,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: _phoneValid,
                    ),
                  ),
                  SizedBox(height: 0,),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextFormField(
                      controller: passController,
                      obscureText: _isobscure,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password),
                        suffixIcon:togglePassword()
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: (){
                            SFvalidate();


                          },
                          child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            child: Center(
                              child: Text("Sign Up",
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already an user ?",
                        style: TextStyle(
                          letterSpacing: 2,
                          fontFamily: 'oxford',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()
                          ));
                        },
                        child:Text("Login Here",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontFamily: 'oxford',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // store user data
  Future? addUserDetails(String name, String email, int phone, String Pass)
  {
    FirebaseFirestore.instance.collection('Users').add({
      'Full Name':name,
      'Email':email,
      'Phone':phone,
      'Password':Pass,
    });
  }


  //FORM VALIDATION
  void SFvalidate(){
    if(formKey.currentState!.validate())
    {
     showDialog(
       context: context,
       builder: (context) {
       return Center(
         child: CircularProgressIndicator()
     );
     },
     );
     addUserDetails(
       nameController.text.trim(),
       emailController.text.trim(),
       int.parse(phoneController.text.trim()),
       passController.text.trim(),
     );
      auth.createUserWithEmailAndPassword(
          email: emailController.text.toString(),
          password: passController.text.toString()).then((value){

            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => LoginScreen()
            ),
            ModalRoute.withName("/")
            );
            Fluttertoast.showToast(
              msg: "Signed In",
              backgroundColor: Colors.black,
              gravity: ToastGravity.BOTTOM,
              textColor: Colors.white,
              fontSize: 20,
            );
            Navigator.of(context).pop();
      }).onError((error, stackTrace){
        Utils().toastMsg(error.toString().trimLeft());
        Navigator.of(context).pop();
      });
    }
  }
  //EMAIL VALIDATION
  String? _emailValidation(value) {
    final pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
    final regex = RegExp(pattern).hasMatch(value);
    if(value.isEmpty)
    {
      return "Enter email";
    }else if(!regex)
    {
      return "Enter a Valid Email";
    }
    else
    {
      return null;
    }
  }



  //NAME VALIDATION
  String? _nameValid(value)
  {
    if(value.isEmpty)
      {
        return "Enter Name";
      }
    else {
      return null;
    }
  }

  //  PHONE VALIDATION
  String? _phoneValid(value)
  {
    final checkSpaces = r'^\\A\\w{1,20}\\z$';
    final regex=RegExp(checkSpaces).hasMatch(value);
    if(value.isEmpty)
    {
      return("Field cannot be empty");

    }
    else if(value.length > 10)
    {
      return("Enter valid phone number");

    }
    else if(value.length < 10)
    {
      return ("Enter valid phone number");

    }
    else
    {
      return null;
    }
  }

  // Password toggle
  Widget togglePassword(){
    return IconButton(onPressed:(){
      setState(() {
        _isobscure = !_isobscure;
      });
    },
        icon:  _isobscure ? Icon(Icons.visibility): Icon(Icons.visibility_off));
  }
}







