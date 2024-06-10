import 'package:flutter/material.dart';
import 'package:fit_home_app/pages/activity_page/activity_page.dart';
import 'package:fit_home_app/pages/home_page/home_page.dart';
import 'package:fit_home_app/pages/profile_page/profile_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const Navbar(),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        indicatorColor: Colors.red[200],
        selectedIndex: pageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications_sharp),
            icon: Badge(child: Icon(Icons.notifications_outlined)),
            label: 'Activity',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_sharp),
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.person_outline),
            ),
            label: 'Profile',
          ),
        ],
      ),
      /* Route is here... */
      body: [
        /// Notifications page
        const ActivityPage(title: 'Fit Activity'),

        /// Home page
        const HomePage(title: 'Fit Home'),

        /// Messages page
        const ProfilePage(),
      ][pageIndex],
    );
  }
}
