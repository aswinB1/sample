import 'package:flutter/material.dart';
import 'package:validater/First_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
var jkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Form(
          key: jkey,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "WELCOME",
                style: TextStyle(
                    color: Colors.black, fontSize: 50),
              )),
              Center(
                child: ElevatedButton(onPressed:(){
                  bool isValid=jkey.currentState!.validate();
                  print('isvalid');
                 Navigator.push(context, MaterialPageRoute(builder:(cnxt){
                   return PageOne();
                 }
                 ),
                 );
                },
                  child:Text("next")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
