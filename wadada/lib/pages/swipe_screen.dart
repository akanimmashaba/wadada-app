// swipe_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wadada/widgets/custom_app_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';

// Sample data provider for swiping users
final swipeProvider = StateProvider<List<Map<String, String>>>((ref) {
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
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    {
      'name': 'Emily',
      'age': '24',
      'location': 'Seattle',
      'image': 'assets/charlie.jpg'
    },
    {
      'name': 'Michael',
      'age': '29',
      'location': 'Austin',
      'image': 'assets/bob.jpg'
    },
    {
      'name': 'Sarah',
      'age': '23',
      'location': 'Denver',
      'image': 'assets/alice.jpg'
    },
    // Add more sample users as needed
  ];
});

class SwipeScreen extends ConsumerStatefulWidget {
  const SwipeScreen({super.key});

  @override
  _SwipeScreenState createState() => _SwipeScreenState();
}

class _SwipeScreenState extends ConsumerState<SwipeScreen> {
  @override
  Widget build(BuildContext context) {
    final swipeList = ref.watch(swipeProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Swipe',
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
      body: swipeList.isEmpty
          ? const Center(child: Text('No more users to swipe!'))
          : Stack(
              children: swipeList.map((user) {
                final index = swipeList.indexOf(user);
                return Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Draggable<Map<String, String>>(
                      data: user,
                      feedback: UserCard(user: user),
                      childWhenDragging: const SizedBox.shrink(),
                      onDragEnd: (details) {
                        if (details.offset.dx > 0) {
                          // Swiped right (like)
                          handleSwipe(user, true);
                        } else if (details.offset.dx < 0) {
                          // Swiped left (dislike)
                          handleSwipe(user, false);
                        }
                      },
                      child: UserCard(user: user),
                    ),
                  ),
                );
              }).toList(),
            ),
    );
  }

  void handleSwipe(Map<String, String> user, bool liked) {
    // Update the state based on swipe action
    ref.read(swipeProvider.notifier).update((state) {
      final newState = List<Map<String, String>>.from(state);
      newState.remove(user); // Remove the swiped user
      return newState;
    });
  }
}

class UserCard extends StatelessWidget {
  final Map<String, String> user;

  const UserCard({super.key, required this.user});

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
              user['image']!,
              height: 300,
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
                  '${user['name']}, ${user['age']}',
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  minFontSize: 16,
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
                        user['location']!,
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
