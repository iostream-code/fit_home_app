import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityPage extends StatefulWidget {
  final String title;

  const ActivityPage({super.key, required this.title});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final List<Image> carouselItems = [
    Image.asset('/assets/images/running.jpg'),
    Image.asset('/assets/images/walking.jpeg'),
    Image.asset('/assets/images/body_workout.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Other widgets
          CarouselSlider(
            items: carouselItems,
            options: CarouselOptions(
              height: size.height * 0.2, // Customize the height of the carousel
              autoPlay: true, // Enable auto-play
              enlargeCenterPage: true, // Increase the size of the center item
              enableInfiniteScroll: true, // Enable infinite scroll
              onPageChanged: (index, reason) {
                return Text(
                  carouselItems[index] as String,
                );
                // Optional callback when the page changes
                // You can use it to update any additional UI components
              },
            ),
          ),
          // Other widgets
        ],
      ),
    );
  }
}
