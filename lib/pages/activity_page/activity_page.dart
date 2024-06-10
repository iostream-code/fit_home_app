import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ActivityPage extends StatelessWidget {
  final String title;

  const ActivityPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/running.jpg',
      'assets/images/walking.jpeg',
      'assets/images/body_workout.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return CarouselSlider(
              items: [
                imageCarousel(images[index]),
                // //1st Image of Slider
                // Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: const DecorationImage(
                //       image: AssetImage("assets/images/running.jpg"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                // //2nd Image of Slider
                // Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: const DecorationImage(
                //       image: AssetImage("assets/images/walking.jpeg"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                // //3rd Image of Slider
                // Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: const DecorationImage(
                //       image: AssetImage("assets/images/body_workout.jpg"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget imageCarousel(String assetImage) {
  return Container(
    margin: const EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: AssetImage(assetImage),
        fit: BoxFit.cover,
      ),
    ),
  );
}
