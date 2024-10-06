import 'package:flutter/material.dart';
import 'package:flutter_ido_app/main_navigator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            SizedBox(height: 50,),
            Text("Verification", style: TextStyle( fontSize: 23 ),),
            SizedBox(height: 20,),
            Text("Enter your OTP code number", style: TextStyle( fontSize: 18 )),
            SizedBox(height: 20,),
            PinCodeTextField(
              appContext: context, 
              length: 6,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
              ),
            ),
            SizedBox(height: 50,),
            TextButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainNavigator()))
              }, 
              child: Text("Verify", style: TextStyle(color: Colors.white),), 
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue[800],
              ),
              )
          ],),
        )
      ),
    );
  }
}