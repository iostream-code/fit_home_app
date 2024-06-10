import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fit_home_app/pages/home_page/widgets/recent_activity.dart';
import 'package:fit_home_app/pages/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/fitness_banner.jpg',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RecentActivity(
              items: List<String>.generate(10, (index) => 'Item $index'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
