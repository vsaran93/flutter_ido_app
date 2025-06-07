import 'package:flutter/material.dart';
import 'package:flutter_ido_app/screens/service_provider_list_screen.dart';


class EssentialCategoryScreen extends StatelessWidget {
  const EssentialCategoryScreen({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Text("Essential Services", style: TextStyle(fontSize: 18.0),),
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
            child: Text("Select a service", style: TextStyle(fontSize: 16.0),),
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
                  onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context) =>  const ServiceProviderListScreen(),)) },
                  child: Row(
                  children: [
                    // First Column: Image (25% Width)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 3/4,
                        child: Image(image: AssetImage('assets/images/housekeeping.jpeg',), fit: BoxFit.cover)
                      ),
                    ),
                    // Second Column: Description (75% Width)
                    SizedBox(width: 8), // Space between image and text
                    // Second Column: Description (75% width)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Housekeeping',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Maintain a clean and organized home',
                            style: TextStyle(fontSize: 14),
                            softWrap: true, // Ensures text wraps properly
                          ),
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
                child: Row(
                  children: [
                    // First Column: Image (25% Width)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 3/4,
                        child: Image(image: AssetImage('assets/images/gardening.jpg',), fit: BoxFit.cover)
                      ),
                    ),
                    // Second Column: Description (75% Width)
                    SizedBox(width: 8), // Space between image and text
                    // Second Column: Description (75% width)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gardening',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Clutivating and maintaining a garden',
                            style: TextStyle(fontSize: 14),
                            softWrap: true, // Ensures text wraps properly
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // First Column: Image (25% Width)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 3/4,
                        child: Image(image: AssetImage('assets/images/plumbing.jpg',), fit: BoxFit.cover)
                      ),
                    ),
                    // Second Column: Description (75% Width)
                    SizedBox(width: 8), // Space between image and text
                    // Second Column: Description (75% width)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Plumbing',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Piping and fixtures for water supply',
                            style: TextStyle(fontSize: 14),
                            softWrap: true, // Ensures text wraps properly
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.list),
                  Text('Service 4'),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text('Service 5'),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.list),
                  Text('Service 6'),
                ],
              ),
            ),
          ],
        ),)
        ],)
      )
    );
  }
}


