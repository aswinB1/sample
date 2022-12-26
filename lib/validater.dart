import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:validater/nwpage.dart';

class Validater extends StatelessWidget {
  Validater({Key? key}) : super(key: key);
  var phone;
  var name;
  var age;
  var email;
  var address;
  var fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: ,
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lime,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: fkey,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      name = value;
                      if (value!.isEmpty) {
                        return "empty";
                      }
                      // print(name);
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        label: Text("ENTR NAME")),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onChanged: (value) {
                      phone = value;
                    },
                    validator: (value) {
                      if (value!.length < 10) {
                        Fluttertoast.showToast(
                            msg: "ENTER A 10 DIGIT PHONE NUMBER");
                        return 'empty';
                      } else {}
                      // print(phone);
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        label: Text("ENTER VAILD PHONE NUMBER ")),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextFormField(
                          validator: (value) {
                            age = value;
                            if (age!.length > 2) {
                              return "UNVALID AGE";
                            } else {}
                            // print(age);
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              label: Text("ENTER AGE")),
                          autovalidateMode: AutovalidateMode.always,
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      email = value;
                      if (email!.contains("@") && email!.contains(".com")) {
                        Fluttertoast.showToast(msg: "VAILD EMAIL");
                      } else {
                        Fluttertoast.showToast(msg: "UNVAILD EMAIL ID");
                      }
                      // print(email);
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        label: Text("ENTER VAILD E-MAIL ID ")),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  child: TextFormField(
                    maxLines: 5,
                    validator: (value) {
                      address = value;
                      //  print(address);
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        label: Text("ENTER VAILD ADDRESS")),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
              ),
              Center(child: ElevatedButton(onPressed: () {
                bool isValid = fkey.currentState!.validate();
                print(isValid);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnxt){
                  return HomePage();
                }
                ),
                );
 // print("$name\n$phone\n$age\n$email\n$address");
              }, child: Text("save")))

            ]),
          ),
        ),
      ),
    );
  }
}
