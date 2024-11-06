// profile_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wadada/providers/auth_provider.dart';
import 'package:wadada/widgets/custom_app_bar.dart';
import 'package:wadada/widgets/subscription_option.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileImages = [
      'assets/alice.jpg',
      'assets/bob.jpg',
      'assets/charlie.jpg',
    ];
    final userName = "aki"; // Sample name
    final userAge = "27"; // Sample age

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        additionalActions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification action
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Top half: Profile Image and Details
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: PageView.builder(
              itemCount: profileImages.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Image.asset(
                      profileImages[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "$userName, $userAge",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Subscription Options Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: SubscriptionOption.subscriptionOptions.map((option) {
                return Expanded(
                  child: SubscriptionOption(
                    title: option['title'] as String,
                    price: option['price'] as String,
                    color: option['color'] as Color,
                    onBuyPressed: () {
                      // Handle buy action
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          const Spacer(),

          // Logout Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
                Navigator.of(context).pushReplacementNamed('/login');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.red,
              ),
              child: const Text('Logout'),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
