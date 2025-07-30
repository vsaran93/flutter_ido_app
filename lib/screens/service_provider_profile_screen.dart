import 'package:flutter/material.dart';

class ServiceProviderProfileScreen extends StatefulWidget {
  const ServiceProviderProfileScreen({ super.key });
  @override
  State<ServiceProviderProfileScreen> createState() => _TabbedScreen();
}

class _TabbedScreen extends State<ServiceProviderProfileScreen> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:Center(
      child: Column(
        children: [
          Text("Details"),
          SizedBox(height: 20,),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.22,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/profile_pic.jpg',),
              ),
              ]
            ),
          ),
          SizedBox(height: 10,),
          Text("Alex Smith"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber[400],),
              Text("4.8"),
              SizedBox(width: 10,),
              Text("Join on: 01/02/2023")
            ],
          ),
          SizedBox(height: 20,),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
              Tab(text: "Basic Info",),
              Tab(text: "Media",),
              Tab(text: "Docs",),
              Tab(text: "Links",)
            ],)
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Age: 30", style: TextStyle(fontSize: 16)),
                    Text("From: Colombo", style: TextStyle(fontSize: 16)),
                    Text("Working Hours: 08:00 - 22:00", style: TextStyle(fontSize: 16)),
                    
                    SizedBox(height: 12),
                    Divider(),
                    
                    SizedBox(height: 8),
                    Text("Contact Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.phone, size: 20, color: Colors.grey[700]),
                        SizedBox(width: 6),
                        Text("+94778345678"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, size: 20, color: Colors.grey[700]),
                        SizedBox(width: 6),
                        Text("Abc@work.com"),
                      ],
                    ),
                    
                    SizedBox(height: 12),
                    Divider(),

                    SizedBox(height: 8),
                    Text("Service Provided", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 8),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: [
                        Chip(
                          label: Text("Cleaning"),
                          backgroundColor: Colors.blue[50],
                          labelStyle: TextStyle(color: Colors.blue[800]),
                        ),
                        Chip(
                          label: Text("Gardening"),
                          backgroundColor: Colors.green[50],
                          labelStyle: TextStyle(color: Colors.green[800]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text("Tab2"),
              Text("Tab3"),
              Text("Tab4")
            ],),
          )
        ],
      )
      )
        
      ,)
    );
  }
}