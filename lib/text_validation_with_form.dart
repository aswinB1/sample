import 'package:flutter/material.dart';
import 'package:validater/validater.dart';

class TextValidationWithForm extends StatelessWidget {
  TextValidationWithForm({Key? key}) : super(key: key);

  var fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter something';
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('name'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter something';
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('name'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                bool isValid = fkey.currentState!.validate();
                print(isValid);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return Validater();
                    },
                  ),
                );
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
