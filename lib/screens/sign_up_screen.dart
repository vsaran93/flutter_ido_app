import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisibleClientRegistration = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: !isVisibleClientRegistration ? Column(
          children: [
              Image(image: AssetImage('assets/images/select.png'),),
              SizedBox(height: 20.0,),
              Text("Let's get started", style: TextStyle(fontSize: 28.0),),
              SizedBox(height: 20.0,),
              Text("Please select the option below", style: TextStyle(fontSize: 20.0),),
              SizedBox(height: 60.0,),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: TextButton(
                onPressed: () => {
                  setState(() => isVisibleClientRegistration = !isVisibleClientRegistration),
                }, 
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  minimumSize: Size(300, 50),
                  backgroundColor: Colors.blue[800]
                ),
                child: Text('Client', style: TextStyle(color: Colors.white),)
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: TextButton(
                onPressed: () => {}, 
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  minimumSize: Size(300, 50),
                  backgroundColor: Colors.blue[800]
                ),
                child: Text('Service Provider', style: TextStyle(color: Colors.white),)
                )
              )
            ]
          ) : Column(
            children: [
              Text("Fill your details", style: TextStyle(fontSize: 20.0),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "First name"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Last name"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phone Number"
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: TextButton(
                onPressed: () => {}, 
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  backgroundColor: Colors.blue[800],
                  minimumSize: Size.fromHeight(50),
                ),
                child: Text('Register', style: TextStyle(color: Colors.white),)
                )
              )
            ],
          ),
      ),
    );
  }
}