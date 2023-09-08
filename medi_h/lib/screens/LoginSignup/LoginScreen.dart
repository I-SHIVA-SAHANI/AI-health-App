
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medi_h/NavigationBarScreen.dart';
import '../../utils/utils.dart';
import 'SignUpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isobscure=true;
  final emailCont = TextEditingController();
  final passCont = TextEditingController();
  final formKey=GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Form(

          key: formKey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      child: Text("LOGIN PAGE",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'oxford',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,

                      ),),
                    ),


                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(20),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/loginpagebanner.jpg')
                    ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: emailCont,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter Email"),
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: _emailValidation,
                      ),
                    ),

                    SizedBox(height: 0,),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextFormField(
                        controller: passCont,
                        obscureText: _isobscure,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter Password"),
                        prefixIcon: Icon(Icons.password),
                          suffixIcon: togglePassword(),
                        ),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return "Enter password";
                          }
                          else if(value.length <6 || value.length > 10)
                          {
                            return "Password should be min 6 and max 10";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Material(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: (){
                              Fvalidate();

                            },
                            child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                              child: Center(
                                child: Text("Log In",
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
                        Text("Don't have any acoount?",
                        style: TextStyle(
                          fontFamily: 'oxford',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                        ),
                        TextButton(
                          onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => SignUpScreen()
                          ));
                        },
                            child:Text("Create Account",
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

  //PASSWORD TOGGLE
  Widget togglePassword(){
    return IconButton(onPressed:(){
      setState(() {
        _isobscure = !_isobscure;
      });
    },
        icon:  _isobscure ? Icon(Icons.visibility): Icon(Icons.visibility_off));
  }

  //FORM VALIDATION
  void Fvalidate(){
    if(formKey.currentState!.validate())
    {

      // showDialog(
      //   context: context,
      //   builder: (context) {
      //   return Center(
      //       child: CircularProgressIndicator()
      //   );
      // },
      // );
      auth.signInWithEmailAndPassword(
          email: emailCont.text.toString(),
          password: passCont.text.toString()).then((value){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarScreen()),
            );
            Fluttertoast.showToast(
              msg: "Logged In",
              backgroundColor: Colors.black,
              gravity: ToastGravity.BOTTOM,
              textColor: Colors.white,
              fontSize: 20,
            );
            // Navigator.pop(context);
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


}