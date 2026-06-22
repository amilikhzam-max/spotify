import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/library_page.dart';

class SpotifyBottomNav extends StatelessWidget {
  final int selectedIndex;

  const SpotifyBottomNav({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(color: Colors.white10),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          navItem(context, Icons.home, "Home", 0, const HomePage()),
          navItem(context, Icons.search, "Search", 1, const HomePage()), // sementara
          navItem(context, Icons.library_music, "Library", 2, const LibraryPage()),
          navItem(context, Icons.workspace_premium, "Premium", 3, const HomePage()), // sementara
          navItem(context, Icons.add_circle, "Create", 4, const HomePage()), // sementara
        ],
      ),
    );
  }

  Widget navItem(
    BuildContext context,
    IconData icon,
    String label,
    int index,
    Widget page,
  ) {
    final bool active = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        if (!active) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        }
      },

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            icon,
            color: active ? Colors.green : Colors.white54,
            size: 26,
          ),

          const SizedBox(height: 3),

          Text(
            label,
            style: TextStyle(
              color: active ? Colors.green : Colors.white54,
              fontSize: 11,
              fontWeight: active ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}