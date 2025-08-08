
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:flutter_application_1/login.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final authservice=AuthService();
 
  final _Emailcontroler=TextEditingController();
  final _passwordcontroler=TextEditingController();
  final _confirmpassword=TextEditingController();

  void sinup()async
  {
    final email=_Emailcontroler.text;
    final password=_passwordcontroler.text;
    final confirmpassword=_confirmpassword.text;
    if(password!=confirmpassword)
    {
       ScaffoldMessenger.of(Text("password did't match ") as BuildContext);
       return;
    }
    try{
      await authservice.signUpWithEmailPassword(email, password);
    }catch(e){
     throw 404;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeInUp(duration: Duration(milliseconds: 1000), child: Text("Sign up", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),)),
                  SizedBox(height: 20,),
                  FadeInUp(duration: Duration(milliseconds: 1200), child: Text("Create an account, It's free", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700]
                  ),)),
                ],
              ),
              Column(
                children: <Widget>[
                  FadeInUp(duration: Duration(milliseconds: 1200), child: makeInput(label: "Email")),
                  FadeInUp(duration: Duration(milliseconds: 1300), child: makeInput(label: "Password", obscureText: true)),
                  FadeInUp(duration: Duration(milliseconds: 1400), child: makeInput(label: "Confirm Password", obscureText: true)),
                ],
              ),
              FadeInUp(duration: Duration(milliseconds: 1500), child: Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                  )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  color: const Color.fromARGB(255, 105, 240, 240),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600, 
                    fontSize: 18
                  ),),
                ),
              )),
              FadeInUp(duration: Duration(milliseconds: 1600), child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  Text(" Login", style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 18
                  ),),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)
            ),
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
class NextPage extends StatelessWidget {
  
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page'),),
      body: Center(
        child: Text('sign up don'),
      ),
    );
  }
}