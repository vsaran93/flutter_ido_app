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
              Text("Tab1"),
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