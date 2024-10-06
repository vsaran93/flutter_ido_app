import 'package:flutter/material.dart';
import 'package:flutter_ido_app/screens/account_screen.dart';
import 'package:flutter_ido_app/screens/activities_screen.dart';
import 'package:flutter_ido_app/screens/home_screen.dart';
import 'package:flutter_ido_app/screens/notification_screen.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const MainNavigator(),
    );
  }
}


class MainNavigator extends StatefulWidget {
  const MainNavigator({
    super.key
  });

  @override
  State<MainNavigator> createState() => _MainNavigator(); 
}


class _MainNavigator extends State<MainNavigator> {
  final tabs = [ HomeScreen(), ActivitiesScreen(), NotificationScreen(), AccountScreen() ];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.blue.shade800,
          currentIndex: currentPageIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          onTap: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          items: const<BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), 
              label: 'Activities'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), 
            label: 'Notifications'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Account'
          )
          ],
        ),
      ),
      body: tabs[currentPageIndex],
    );
  }
}