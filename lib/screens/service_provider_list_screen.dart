import 'package:flutter/material.dart';
import 'package:flutter_ido_app/providers/service_providers_list_provider.dart';
import 'package:flutter_ido_app/screens/service_provider_profile_screen.dart';
import 'package:provider/provider.dart';

class ServiceProviderListScreen extends StatelessWidget {
  const ServiceProviderListScreen({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<ServiceProvidersListProvider>(builder: (context, state, child) => Column(children: [
          Text(state.headerTitle, style: TextStyle(fontSize: 18.0),),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 10.0,25.0,10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'All of Sri Lanka',
                suffixIcon: Icon(Icons.map),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(25.0,10.0,25.0,10.0),
            child: Text("Select a service provider", style: TextStyle(fontSize: 16.0),),
          ),
          Expanded(
          child: GridView.count(
          childAspectRatio: 2.3,
          padding: EdgeInsets.fromLTRB(25.0,0,25.0,0),
          crossAxisCount: 1,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ServiceProviderProfileScreen())),
                  child: Row(
                  children: [
                    // First Column: Image (25% Width)
                     SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/profile_pic.jpg',),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber[400],),
                          Text("4.8")
                        ],
                      ),
                    ],)),
                    // Second Column: Description (75% Width)
                    SizedBox(width: 8), // Space between image and text
                    // Second Column: Description (75% width)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jhon Smith',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Age: 23',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'From: Colombo',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Work Hours: 08:00am - 6:00pm',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.language, size: 22,),
                              SizedBox(width: 4,),
                              Text(
                                'Tamil, English, Sinhala',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                )  
              ),
            ),
             Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  child: Row(
                  children: [
                    // First Column: Image (25% Width)
                     SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/profile_pic.jpg',),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber[400],),
                          Text("4.8")
                        ],
                      ),
                    ],)),
                    // Second Column: Description (75% Width)
                    SizedBox(width: 8), // Space between image and text
                    // Second Column: Description (75% width)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jhon Smith',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Age: 23',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'From: Colombo',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Work Hours: 08:00am - 6:00pm',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.language, size: 22,),
                              SizedBox(width: 4,),
                              Text(
                                'Tamil, English, Sinhala',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                )  
              ),
            )
          ],
        ),)
        ],),
      ),
      )
    );
  } 
}