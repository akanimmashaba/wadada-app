// likes_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wadada/widgets/custom_app_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';

// Sample data provider for likes
final likesProvider = StateProvider<List<Map<String, String>>>((ref) {
  return [
    {
      'name': 'James',
      'age': '26',
      'location': 'San Francisco',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/charlie.jpg'
    },
    // Add more sample users as needed
  ];
});

class LikesScreen extends ConsumerStatefulWidget {
  const LikesScreen({super.key});

  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends ConsumerState<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    final likes = ref.watch(likesProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Likes'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: likes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.94, // Adjusted for more vertical space
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final user = likes[index];
            return ProfileCard(
              name: user['name']!,
              age: user['age']!,
              location: user['location']!,
              image: user['image']!,
            );
          },
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String age;
  final String location;
  final String image;

  const ProfileCard({
    super.key,
    required this.name,
    required this.age,
    required this.location,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              image,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  '$name, $age',
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  minFontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.grey, size: 16),
                    const SizedBox(width: 4),
                    Flexible(
                      child: AutoSizeText(
                        location,
                        maxLines: 1,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
