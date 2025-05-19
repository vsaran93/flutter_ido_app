import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_ido_app/screens/essential_category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 70.0,),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
            child: Text("Welcome, Mark", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 10.0,25.0,10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'What are you looking for?',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
            child: Text("Browse by service category", style: TextStyle(fontSize: 16.0),),
          ),
          Expanded(
          child: GridView.count(
          childAspectRatio: 1,
          crossAxisCount: 2,
          children: [
            Card(
              margin: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context) =>  const EssentialCategoryScreen(),)) },
                child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 18.0/13.0,
                        child: Image(image: AssetImage('assets/images/plumbing.jpg',), fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Essential', textAlign: TextAlign.center,),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
              )
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 18.0/13.0,
                        child: Image(image: AssetImage('assets/images/gardening.jpg',), fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Personal', textAlign: TextAlign.center,),
                          ],
                        ),
                      )
                    ],
                  ),
              )
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 18.0/13.0,
                        child: Image(image: AssetImage('assets/images/housekeeping.jpeg',), fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Occasion', textAlign: TextAlign.center,),
                          ],
                        ),
                      )
                    ],
                  ),
              )
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 18.0/13.0,
                        child: Image(image: AssetImage('assets/images/business.jpg',), fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Business', textAlign: TextAlign.center,),
                          ],
                        ),
                      )
                    ],
                  ),
              )
            ),
          ],
        ),)
        ],)
      )
    );
  }
}