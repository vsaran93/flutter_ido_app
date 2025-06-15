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
  int currentPageIndex = 0;

  Map<int, GlobalKey<NavigatorState>>navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey(),
  };


  Widget _buildTabNavigator(int index, Widget child) {
    return Navigator(
      key: navigatorKeys[index],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => child,
          settings:  settings
        );
      },
    );
  }
 
  Widget _buildNavItem({required IconData icon, required String label, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPageIndex = index;
        });
      },
      child: Container(
        width: 60,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: currentPageIndex == index ? Colors.white : Colors.grey
            ),
            SizedBox(height: 4,),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: currentPageIndex == index ? Colors.white : Colors.grey
              ),
            )
          ],)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PopScope(
          onPopInvoked: (didPop) {
            if(!didPop) {
              final currentNavigationState = navigatorKeys[currentPageIndex]?.currentState;
              if (currentNavigationState?.canPop() ?? false) {
                currentNavigationState?.pop();
              }
            }
          },
          child: IndexedStack(
            index: currentPageIndex,
            children: <Widget>[
              _buildTabNavigator(0, const HomeScreen()),
              _buildTabNavigator(1, const ActivitiesScreen()),
              _buildTabNavigator(2, const NotificationScreen()),
              _buildTabNavigator(3, const AccountScreen()),
            ],
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue.shade800, // Button background color
        foregroundColor: Colors.white,  // Icon color
        elevation: 6,  
        child: const Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26), // Custom rounded shape
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6, // Space between button and bar
          color: Colors.blue.shade800,
          child: SizedBox(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                _buildNavItem(icon: Icons.home, label: 'Home', index: 0),
                _buildNavItem(icon: Icons.apps, label: 'Activities', index: 1),
                const SizedBox(width: 40),
                _buildNavItem(icon: Icons.notifications, label: 'Alerts', index: 2),
                _buildNavItem(icon: Icons.person, label: 'Account', index: 3),
                ],
            )
        ),
        )
    );
  }
}