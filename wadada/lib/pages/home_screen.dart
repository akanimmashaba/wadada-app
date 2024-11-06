// home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wadada/pages/login_screen.dart';
import 'package:wadada/providers/auth_provider.dart';
import 'package:wadada/pages/profile_screen.dart';
import 'package:wadada/pages/discover_screen.dart';
import 'package:wadada/pages/likes_screen.dart';
import 'package:wadada/pages/profile_screen.dart';
import 'package:wadada/pages/swipe_screen.dart';
import 'package:wadada/pages/charts_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _selectedIndex = 2;

  // List of widgets for each screen
  final List<Widget> _screens = [
    DiscoverScreen(),
    LikesScreen(),
    SwipeScreen(),
    ChatsScreen(),
    ProfileScreen(),
  ];

  // Bottom navigation item tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        backgroundColor: Colors.white, // Background color
        showUnselectedLabels: true, // Show labels for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Swipe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
