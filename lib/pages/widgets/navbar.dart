import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          pageIndex = index;
        });
      },
      indicatorColor: Colors.red[200],
      selectedIndex: pageIndex,
      destinations: const [
        NavigationDestination(
          icon: Badge(
            child: Icon(Icons.notifications_sharp),
          ),
          label: 'Activity',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.home_outlined),
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.person),
          ),
          label: 'Profiles',
        ),
      ],
    );
  }
}
