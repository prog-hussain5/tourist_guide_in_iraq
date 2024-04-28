// ignore_for_file: non_constant_identifier_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirm_password = TextEditingController();
  Future sinIn() async {
   if (check_enter_user()) {
        if (passwordConfirn()) {
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.text.trim(), password: _password.text.trim());
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed("/");
   }else{
     return showModalBottomSheet(context: context, builder: (context){
      return SizedBox(height: 300,width: double.infinity,
        child: Center(
          child: Text("يوجد اختلاف الرمز السري", 
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[500])
                            ),
        ),
      );
     }  );
   }
   }else{
  return showModalBottomSheet(context: context, builder: (context){
      return SizedBox(height: 300,width: double.infinity,
        child: Center(
          child: Text("لم تقم باضافه ألبريد ألالكتروني او كلمة المرور حاول مجددا ", 
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[500])
                            ),
        ),
      );
     }  );
   }
  }

bool passwordConfirn(){

  if (_password.text.trim() ==_confirm_password.text.trim()) {
    return true;
  }else{
    return false;
  }
}
 bool check_enter_user(){
   if (_email.text.trim()!= "" && _password.text.trim() != "" && _confirm_password.text.trim() != "") {
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
    _confirm_password.dispose();
  }

  void go_to_login() {
    Navigator.of(context).pushReplacementNamed("login_screens");
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
                height: 250,
              ),
              const SizedBox(
                height: 15,
              ),
              //title
              Center(
                child: Text("أنشاء حساب",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[500])),
              ),
              //subtitle
              Center(
                child: Text("مرحبا بك في الدليل السياحي الاول  في العراق",
                    style: GoogleFonts.robotoCondensed(fontSize: 18)),
              ),
              const SizedBox(
                height: 20,
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
                          border: InputBorder.none, hintText: "البريد ألالكتروني "),
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
              // confirm password textfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                  controller: _confirm_password,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "أعادة كلمة المرور"),
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
                      "أنشاء حساب",
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
                  Text("لدي حساب با الفعل ",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 10,),
                  InkWell(
                    
                   onTap: go_to_login,
                    child: Text("اذهب لتسجيل الدخول",
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