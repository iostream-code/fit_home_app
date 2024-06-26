import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  final List<String> items;
  const RecentActivity({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 24,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return activityCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget activityCard() {
  return Card(
    child: ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: Colors.white,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.asset(
          'assets/images/recent_activity.jpg',
          width: 56.0,
        ),
      ),
      title: const Text(
        'Two-line ListTile',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      subtitle: const Text(
        'Here is a second line',
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          size: 20,
        ),
        color: Colors.black,
      ),
    ),
  );
}
