// discover_screen.dart
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:wadada/widgets/custom_app_bar.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({super.key});

  // Sample data for profiles
  final List<Map<String, String>> profiles = [
    {
      'name': 'Alexandria',
      'age': '25',
      'location': 'New York',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Benedict',
      'age': '28',
      'location': 'Los Angeles',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Charlotte',
      'age': '22',
      'location': 'Chicago',
      'image': 'assets/bob.jpg'
    },
    // Add more profiles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Discover',
        additionalActions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // Handle filter icon press
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Filter options coming soon!')),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: profiles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.94, // Adjusted for more vertical space
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final profile = profiles[index];
            return ProfileCard(
              name: profile['name']!,
              age: profile['age']!,
              location: profile['location']!,
              image: profile['image']!,
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
          // Profile Image
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
                // Name and Age with AutoSizeText
                AutoSizeText(
                  name,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  minFontSize: 16, // Minimum font size to avoid overflow
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 4),
                    Flexible(
                      child: AutoSizeText(
                        age,
                        maxLines: 1,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 4),
                // Location
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
