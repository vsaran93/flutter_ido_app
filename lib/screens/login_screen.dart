import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 80.0),
          Image(image: AssetImage('assets/images/login.png')),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Hello please enter your phone number, We will send you an OTP"),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number'
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          OutlinedButton(
            onPressed: () => {}, 
            child: Text("Next"), 
            style: ButtonStyle( 
                
              ),
            )
        ],),
      )
    );
  }
}
