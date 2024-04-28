// ignore_for_file: camel_case_types

import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class acountScreen extends StatefulWidget {
  const acountScreen({super.key});

  @override
  State<acountScreen> createState() => _acountScreenState();
}

class _acountScreenState extends State<acountScreen> {
  File? _selectimage;

  ///// USER NAME Acount
  final user = FirebaseAuth.instance.currentUser!;
  //////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _selectimage != null
                    ? CircleAvatar(
                        radius: 100,backgroundImage: FileImage(_selectimage!), )
                    : Image.network(
                        "https://static.vecteezy.com/system/resources/previews/008/302/462/non_2x/eps10-grey-user-icon-or-logo-in-simple-flat-trendy-modern-style-isolated-on-white-background-free-vector.jpg",height: 200,),
                Text(
                  user.email!,
                  style: const TextStyle(fontSize: 25, color: Colors.blue),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _pickImage,
                    child: const Text(
                      "أختيار صورتك الشخصية ",
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    )),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    cursorColor: Colors.purple,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "ألاسم"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    cursorColor: Colors.purple,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "العمر"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    cursorColor: Colors.purple,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "المحافضة"),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  color: Colors.red,
                  child: const Text(
                    "تسجيل الخروج",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future _pickImage() async {
    final retunImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (retunImage == null) return;
    setState(() {
      _selectimage = File(retunImage.path);
    });
  }
}
