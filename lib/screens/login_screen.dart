import 'package:flutter/material.dart';
import 'package:flutter_ido_app/screens/sign_up_screen.dart';

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
          Image(image: AssetImage('assets/images/weclome.png')),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text("Hello please enter your phone number, We will send you an OTP")
            ),
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
          TextButton(
              onPressed: () => {}, 
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(200, 50),
                backgroundColor: Colors.blue[800]
              ),
              child: Text('Next', style: TextStyle(color: Colors.white),)
          ),
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account?"),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: InkWell(
                child: Text("Register", style: TextStyle(color: Colors.blue[700]),),
                onTap: () => {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const SignUpScreen())),
                },
              ),
              )
            ],
          )
          
        ],),
      )
    );
  }
}
