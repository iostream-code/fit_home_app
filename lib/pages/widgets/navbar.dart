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
      destinations: [
        NavigationDestination(
          icon: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/activity');
            },
            icon: const Badge(
              child: Icon(Icons.notifications_sharp),
            ),
          ),
          label: 'Activity',
        ),
        NavigationDestination(
          selectedIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.home),
          ),
          icon: Icon(Icons.home_outlined),
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
