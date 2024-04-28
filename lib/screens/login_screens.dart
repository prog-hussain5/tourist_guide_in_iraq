// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {


///////////////////////////////////////////////////////


  final _email = TextEditingController();
  final _password = TextEditingController();
  Future sinIn() async {
 if (check_enter_user()) {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _email.text.trim(), password: _password.text.trim());
     Navigator.of(context).pushNamed("/");
 }else{
  return showModalBottomSheet(context: context, builder: (context){
      return SizedBox(height: 300,width: double.infinity,
        child: Center(
          child: Text("لم تقم باضافه البريد الالكتروني او كلمة المرور حاول مجددا ", 
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[500])
                            ),
        ),
      );
     }  );
 }
 
  }

 bool check_enter_user(){
   if (_email.text.trim()!= "" && _password.text.trim() != "") {
     return true;
   }else{
     return false;
   }
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  void go_to_signUp() {
    Navigator.of(context).pushReplacementNamed("sinUp_screens");
  }


//

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Scaffold(
        backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              //image
              Image.network(
                "https://pbs.twimg.com/profile_images/1471562013574930432/WCisHDer_200x200.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              //title
              Center(
                child: Text("تسجيل الدخول",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[500])),
              ),
              //subtitle
              Center(
                child: Text("مرحبا بك مرة اخرى يسرني ان أراك",
                    style: GoogleFonts.robotoCondensed(fontSize: 20)),
              ),
              const SizedBox(
                height: 40,
              ),
              //email textfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                     controller: _email,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "البريد ألالكتروني"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //password textfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                  controller: _password,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "كلمة المرور"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // sign in botton
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  // مثل الانكويلي
                 onTap: sinIn,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[400],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      "تسجيل الدخول",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // text  to sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("أذا لم يكن لديك اي حساب سابقا",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 10,),
                  InkWell(
                   onTap: go_to_signUp,
                    child: Text("قم بأنشاء حساب  جديد    ",
                        style: GoogleFonts.robotoCondensed(
                            color: Colors.deepPurple[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}